import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_unit_json.freezed.dart';
part 'measure_unit_json.g.dart';

@freezed
class MeasureUnitJson with _$MeasureUnitJson {
  const factory MeasureUnitJson({
    required int id,
    required String? one,
    required String? few,
    required String? many,
  }) = _MeasureUnitJson;

  factory MeasureUnitJson.fromJson(Map<String, Object?> json) => _$MeasureUnitJsonFromJson(json);
}
