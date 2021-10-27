class ResponseException {
  final int? statusCode;
  final String? data;

  ResponseException(this.statusCode, {this.data});
}
