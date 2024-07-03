// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedBenefitStruct extends BaseStruct {
  SelectedBenefitStruct({
    BenefitsStruct? benefits,
    BenefitsDataStruct? benefitData,
  })  : _benefits = benefits,
        _benefitData = benefitData;

  // "benefits" field.
  BenefitsStruct? _benefits;
  BenefitsStruct get benefits => _benefits ?? BenefitsStruct();
  set benefits(BenefitsStruct? val) => _benefits = val;

  void updateBenefits(Function(BenefitsStruct) updateFn) {
    updateFn(_benefits ??= BenefitsStruct());
  }

  bool hasBenefits() => _benefits != null;

  // "benefitData" field.
  BenefitsDataStruct? _benefitData;
  BenefitsDataStruct get benefitData => _benefitData ?? BenefitsDataStruct();
  set benefitData(BenefitsDataStruct? val) => _benefitData = val;

  void updateBenefitData(Function(BenefitsDataStruct) updateFn) {
    updateFn(_benefitData ??= BenefitsDataStruct());
  }

  bool hasBenefitData() => _benefitData != null;

  static SelectedBenefitStruct fromMap(Map<String, dynamic> data) =>
      SelectedBenefitStruct(
        benefits: BenefitsStruct.maybeFromMap(data['benefits']),
        benefitData: BenefitsDataStruct.maybeFromMap(data['benefitData']),
      );

  static SelectedBenefitStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedBenefitStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'benefits': _benefits?.toMap(),
        'benefitData': _benefitData?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'benefits': serializeParam(
          _benefits,
          ParamType.DataStruct,
        ),
        'benefitData': serializeParam(
          _benefitData,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SelectedBenefitStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedBenefitStruct(
        benefits: deserializeStructParam(
          data['benefits'],
          ParamType.DataStruct,
          false,
          structBuilder: BenefitsStruct.fromSerializableMap,
        ),
        benefitData: deserializeStructParam(
          data['benefitData'],
          ParamType.DataStruct,
          false,
          structBuilder: BenefitsDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SelectedBenefitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedBenefitStruct &&
        benefits == other.benefits &&
        benefitData == other.benefitData;
  }

  @override
  int get hashCode => const ListEquality().hash([benefits, benefitData]);
}

SelectedBenefitStruct createSelectedBenefitStruct({
  BenefitsStruct? benefits,
  BenefitsDataStruct? benefitData,
}) =>
    SelectedBenefitStruct(
      benefits: benefits ?? BenefitsStruct(),
      benefitData: benefitData ?? BenefitsDataStruct(),
    );
