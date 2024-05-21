import 'package:freezed_annotation/freezed_annotation.dart';

part 'ex_model.freezed.dart';
part 'ex_model.g.dart';

@freezed
class ExModel with _$ExModel {
  const factory ExModel({
    required double w,
    required double d,
    required int mt,
  }) = _ExModel;
  factory ExModel.fromJson(Map<String, dynamic> json) =>
      _$ExModelFromJson(json);
}
