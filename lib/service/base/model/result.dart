import 'package:alexander/service/base/model/error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

// part 'result.g.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;

  const factory Result.failure(Error error) = Failure<T>;

// factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
