import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/exceptions/exceptions.dart';

/// Holds the implementation for authenticating with a Json Web Token
class TokenStorage {
  TokenStorage({
    required AccessKey accessKey,
  }) : _accessKey = accessKey {
    _generateToken();
  }

  late String _token;
  final AccessKey _accessKey;

  String get getToken {
    try {
      JWT.verify(
        _token,
        SecretKey(
          base64Url.normalize(_accessKey.signingSecret),
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
        'iss': _accessKey.developerId,
        'kid': _accessKey.keyId,
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
        base64Url.normalize(_accessKey.signingSecret),
      ),
    );
    _token = jwtToken;
    return jwtToken;
  }
}
