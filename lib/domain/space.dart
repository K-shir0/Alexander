import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'space.freezed.dart';
part 'space.g.dart';

@freezed
abstract class SpaceMetadata with _$SpaceMetadata {
  const factory SpaceMetadata({
    required String id,
    @Default('') String title,
  }) = _SpaceMetadata;

 factory SpaceMetadata.fromJson(Map<String, dynamic> json) => _$SpaceMetadataFromJson(json);
}