class Failure implements Exception {
  bool isWarning;
  String title;
  String message;
  String primaryAction;
  String? secondaryAction;
  int statusCode;

  Failure({
    this.isWarning = true,
    this.title = "Erro",
    this.message = "Tente novamente mais tarde",
    this.primaryAction = "OK",
    this.statusCode = 0,
  });

  @override
  String toString() => '$runtimeType Exception';
}
