import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_json.freezed.dart';
part 'step_json.g.dart';

@freezed
class StepJson with _$StepJson {
  const factory StepJson({
    required int id,
    required String? name,
    required int? duration,
  }) = _StepJson;

  factory StepJson.fromJson(Map<String, Object?> json) => _$StepJsonFromJson(json);
}