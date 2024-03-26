class TokenNotValidException implements Exception {
  const TokenNotValidException(this.error);

  final Object error;
}
