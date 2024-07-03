// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BenefitsDataStruct extends BaseStruct {
  BenefitsDataStruct({
    int? amountBenefits,
    int? totalBenefits,
    double? percentageBenefits,
  })  : _amountBenefits = amountBenefits,
        _totalBenefits = totalBenefits,
        _percentageBenefits = percentageBenefits;

  // "amountBenefits" field.
  int? _amountBenefits;
  int get amountBenefits => _amountBenefits ?? 0;
  set amountBenefits(int? val) => _amountBenefits = val;

  void incrementAmountBenefits(int amount) =>
      amountBenefits = amountBenefits + amount;

  bool hasAmountBenefits() => _amountBenefits != null;

  // "totalBenefits" field.
  int? _totalBenefits;
  int get totalBenefits => _totalBenefits ?? 0;
  set totalBenefits(int? val) => _totalBenefits = val;

  void incrementTotalBenefits(int amount) =>
      totalBenefits = totalBenefits + amount;

  bool hasTotalBenefits() => _totalBenefits != null;

  // "percentageBenefits" field.
  double? _percentageBenefits;
  double get percentageBenefits => _percentageBenefits ?? 0.0;
  set percentageBenefits(double? val) => _percentageBenefits = val;

  void incrementPercentageBenefits(double amount) =>
      percentageBenefits = percentageBenefits + amount;

  bool hasPercentageBenefits() => _percentageBenefits != null;

  static BenefitsDataStruct fromMap(Map<String, dynamic> data) =>
      BenefitsDataStruct(
        amountBenefits: castToType<int>(data['amountBenefits']),
        totalBenefits: castToType<int>(data['totalBenefits']),
        percentageBenefits: castToType<double>(data['percentageBenefits']),
      );

  static BenefitsDataStruct? maybeFromMap(dynamic data) => data is Map
      ? BenefitsDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amountBenefits': _amountBenefits,
        'totalBenefits': _totalBenefits,
        'percentageBenefits': _percentageBenefits,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amountBenefits': serializeParam(
          _amountBenefits,
          ParamType.int,
        ),
        'totalBenefits': serializeParam(
          _totalBenefits,
          ParamType.int,
        ),
        'percentageBenefits': serializeParam(
          _percentageBenefits,
          ParamType.double,
        ),
      }.withoutNulls;

  static BenefitsDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      BenefitsDataStruct(
        amountBenefits: deserializeParam(
          data['amountBenefits'],
          ParamType.int,
          false,
        ),
        totalBenefits: deserializeParam(
          data['totalBenefits'],
          ParamType.int,
          false,
        ),
        percentageBenefits: deserializeParam(
          data['percentageBenefits'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BenefitsDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BenefitsDataStruct &&
        amountBenefits == other.amountBenefits &&
        totalBenefits == other.totalBenefits &&
        percentageBenefits == other.percentageBenefits;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([amountBenefits, totalBenefits, percentageBenefits]);
}

BenefitsDataStruct createBenefitsDataStruct({
  int? amountBenefits,
  int? totalBenefits,
  double? percentageBenefits,
}) =>
    BenefitsDataStruct(
      amountBenefits: amountBenefits,
      totalBenefits: totalBenefits,
      percentageBenefits: percentageBenefits,
    );
