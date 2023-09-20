import '../errors/errors.dart';

class Result<T> {
  final T? _data;
  final Failure? _failure;

  Result.success(this._data) : _failure = null;

  Result.failure(this._failure) : _data = null;

  bool get isSuccess => _data != null;

  T get data => _data!;

  Failure get error => _failure!;

  void when({
    required Function(T) success,
    required Function(Failure) failure,
  }) {
    if (_data != null) {
      success(_data as T);
    } else {
      failure(_failure!);
    }
  }
}
