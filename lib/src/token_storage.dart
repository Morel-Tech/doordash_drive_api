import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/exceptions/exceptions.dart';

/// Holds the implementation for authenticating with a Json Web Token
class TokenStorage {
  TokenStorage({
    required TokenProperties tokenProperties,
  }) : _tokenProperties = tokenProperties {
    _generateToken();
  }

  late String _token;
  final TokenProperties _tokenProperties;

  String get token {
    try {
      JWT.verify(
        _token,
        SecretKey(
          base64Url.normalize(_tokenProperties.signingSecret),
        ),
      );
      return _token;
    } on JWTExpiredException {
      return _generateToken();
    } on JWTException catch (e) {
      throw TokenNotValidException(e);
    }
  }

  String _generateToken() {
    final jwt = JWT(
      {
        'aud': 'doordash',
        'iss': _tokenProperties.developerId,
        'kid': _tokenProperties.keyId,
        'exp': DateTime.now()
                .toUtc()
                .add(const Duration(seconds: 300))
                .millisecondsSinceEpoch ~/
            1000,
        'iat': DateTime.now().toUtc(),
      },
      header: {
        'dd-ver': 'DD-JWT-V1',
        'typ': 'JWT',
      },
    );

    final jwtToken = jwt.sign(
      SecretKey(
        base64Url.normalize(_tokenProperties.signingSecret),
      ),
    );
    _token = jwtToken;
    return jwtToken;
  }
}
