// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BenefitStruct extends BaseStruct {
  BenefitStruct({
    String? id,
    String? name,
    String? benefitsCategoriesId,
    int? value,
    bool? isEnabled,
    String? employeersId,
    int? createdAt,
    BenefitEmployeersStruct? employeers,
    String? description,
  })  : _id = id,
        _name = name,
        _benefitsCategoriesId = benefitsCategoriesId,
        _value = value,
        _isEnabled = isEnabled,
        _employeersId = employeersId,
        _createdAt = createdAt,
        _employeers = employeers,
        _description = description;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "benefits_categories_id" field.
  String? _benefitsCategoriesId;
  String get benefitsCategoriesId => _benefitsCategoriesId ?? '';
  set benefitsCategoriesId(String? val) => _benefitsCategoriesId = val;

  bool hasBenefitsCategoriesId() => _benefitsCategoriesId != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  set isEnabled(bool? val) => _isEnabled = val;

  bool hasIsEnabled() => _isEnabled != null;

  // "employeers_id" field.
  String? _employeersId;
  String get employeersId => _employeersId ?? '';
  set employeersId(String? val) => _employeersId = val;

  bool hasEmployeersId() => _employeersId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "employeers" field.
  BenefitEmployeersStruct? _employeers;
  BenefitEmployeersStruct get employeers =>
      _employeers ?? BenefitEmployeersStruct();
  set employeers(BenefitEmployeersStruct? val) => _employeers = val;

  void updateEmployeers(Function(BenefitEmployeersStruct) updateFn) {
    updateFn(_employeers ??= BenefitEmployeersStruct());
  }

  bool hasEmployeers() => _employeers != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static BenefitStruct fromMap(Map<String, dynamic> data) => BenefitStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        benefitsCategoriesId: data['benefits_categories_id'] as String?,
        value: castToType<int>(data['value']),
        isEnabled: data['isEnabled'] as bool?,
        employeersId: data['employeers_id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        employeers: BenefitEmployeersStruct.maybeFromMap(data['employeers']),
        description: data['description'] as String?,
      );

  static BenefitStruct? maybeFromMap(dynamic data) =>
      data is Map ? BenefitStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'benefits_categories_id': _benefitsCategoriesId,
        'value': _value,
        'isEnabled': _isEnabled,
        'employeers_id': _employeersId,
        'created_at': _createdAt,
        'employeers': _employeers?.toMap(),
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'benefits_categories_id': serializeParam(
          _benefitsCategoriesId,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
        'employeers_id': serializeParam(
          _employeersId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'employeers': serializeParam(
          _employeers,
          ParamType.DataStruct,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static BenefitStruct fromSerializableMap(Map<String, dynamic> data) =>
      BenefitStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        benefitsCategoriesId: deserializeParam(
          data['benefits_categories_id'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
        isEnabled: deserializeParam(
          data['isEnabled'],
          ParamType.bool,
          false,
        ),
        employeersId: deserializeParam(
          data['employeers_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        employeers: deserializeStructParam(
          data['employeers'],
          ParamType.DataStruct,
          false,
          structBuilder: BenefitEmployeersStruct.fromSerializableMap,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BenefitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BenefitStruct &&
        id == other.id &&
        name == other.name &&
        benefitsCategoriesId == other.benefitsCategoriesId &&
        value == other.value &&
        isEnabled == other.isEnabled &&
        employeersId == other.employeersId &&
        createdAt == other.createdAt &&
        employeers == other.employeers &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        benefitsCategoriesId,
        value,
        isEnabled,
        employeersId,
        createdAt,
        employeers,
        description
      ]);
}

BenefitStruct createBenefitStruct({
  String? id,
  String? name,
  String? benefitsCategoriesId,
  int? value,
  bool? isEnabled,
  String? employeersId,
  int? createdAt,
  BenefitEmployeersStruct? employeers,
  String? description,
}) =>
    BenefitStruct(
      id: id,
      name: name,
      benefitsCategoriesId: benefitsCategoriesId,
      value: value,
      isEnabled: isEnabled,
      employeersId: employeersId,
      createdAt: createdAt,
      employeers: employeers ?? BenefitEmployeersStruct(),
      description: description,
    );
