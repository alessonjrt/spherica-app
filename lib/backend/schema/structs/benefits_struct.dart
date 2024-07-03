// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BenefitsStruct extends BaseStruct {
  BenefitsStruct({
    String? id,
    String? name,
    String? benefitsCategoriesId,
    int? value,
    String? rules,
    String? description,
    String? benefitsValidateTypesId,
    String? validateDate,
    bool? isEnabled,
    String? employeersId,
    String? userGroupsId,
    int? createdAt,
    String? code,
    List<String>? clientsId,
    EmployeerStruct? employeer,
    StoreStruct? store,
  })  : _id = id,
        _name = name,
        _benefitsCategoriesId = benefitsCategoriesId,
        _value = value,
        _rules = rules,
        _description = description,
        _benefitsValidateTypesId = benefitsValidateTypesId,
        _validateDate = validateDate,
        _isEnabled = isEnabled,
        _employeersId = employeersId,
        _userGroupsId = userGroupsId,
        _createdAt = createdAt,
        _code = code,
        _clientsId = clientsId,
        _employeer = employeer,
        _store = store;

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

  // "rules" field.
  String? _rules;
  String get rules => _rules ?? '';
  set rules(String? val) => _rules = val;

  bool hasRules() => _rules != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "benefits_validate_types_id" field.
  String? _benefitsValidateTypesId;
  String get benefitsValidateTypesId => _benefitsValidateTypesId ?? '';
  set benefitsValidateTypesId(String? val) => _benefitsValidateTypesId = val;

  bool hasBenefitsValidateTypesId() => _benefitsValidateTypesId != null;

  // "validate_date" field.
  String? _validateDate;
  String get validateDate => _validateDate ?? '';
  set validateDate(String? val) => _validateDate = val;

  bool hasValidateDate() => _validateDate != null;

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

  // "user_groups_id" field.
  String? _userGroupsId;
  String get userGroupsId => _userGroupsId ?? '';
  set userGroupsId(String? val) => _userGroupsId = val;

  bool hasUserGroupsId() => _userGroupsId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "clients_id" field.
  List<String>? _clientsId;
  List<String> get clientsId => _clientsId ?? const [];
  set clientsId(List<String>? val) => _clientsId = val;

  void updateClientsId(Function(List<String>) updateFn) {
    updateFn(_clientsId ??= []);
  }

  bool hasClientsId() => _clientsId != null;

  // "employeer" field.
  EmployeerStruct? _employeer;
  EmployeerStruct get employeer => _employeer ?? EmployeerStruct();
  set employeer(EmployeerStruct? val) => _employeer = val;

  void updateEmployeer(Function(EmployeerStruct) updateFn) {
    updateFn(_employeer ??= EmployeerStruct());
  }

  bool hasEmployeer() => _employeer != null;

  // "store" field.
  StoreStruct? _store;
  StoreStruct get store => _store ?? StoreStruct();
  set store(StoreStruct? val) => _store = val;

  void updateStore(Function(StoreStruct) updateFn) {
    updateFn(_store ??= StoreStruct());
  }

  bool hasStore() => _store != null;

  static BenefitsStruct fromMap(Map<String, dynamic> data) => BenefitsStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        benefitsCategoriesId: data['benefits_categories_id'] as String?,
        value: castToType<int>(data['value']),
        rules: data['rules'] as String?,
        description: data['description'] as String?,
        benefitsValidateTypesId: data['benefits_validate_types_id'] as String?,
        validateDate: data['validate_date'] as String?,
        isEnabled: data['isEnabled'] as bool?,
        employeersId: data['employeers_id'] as String?,
        userGroupsId: data['user_groups_id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        code: data['code'] as String?,
        clientsId: getDataList(data['clients_id']),
        employeer: EmployeerStruct.maybeFromMap(data['employeer']),
        store: StoreStruct.maybeFromMap(data['store']),
      );

  static BenefitsStruct? maybeFromMap(dynamic data) =>
      data is Map ? BenefitsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'benefits_categories_id': _benefitsCategoriesId,
        'value': _value,
        'rules': _rules,
        'description': _description,
        'benefits_validate_types_id': _benefitsValidateTypesId,
        'validate_date': _validateDate,
        'isEnabled': _isEnabled,
        'employeers_id': _employeersId,
        'user_groups_id': _userGroupsId,
        'created_at': _createdAt,
        'code': _code,
        'clients_id': _clientsId,
        'employeer': _employeer?.toMap(),
        'store': _store?.toMap(),
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
        'rules': serializeParam(
          _rules,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'benefits_validate_types_id': serializeParam(
          _benefitsValidateTypesId,
          ParamType.String,
        ),
        'validate_date': serializeParam(
          _validateDate,
          ParamType.String,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
        'employeers_id': serializeParam(
          _employeersId,
          ParamType.String,
        ),
        'user_groups_id': serializeParam(
          _userGroupsId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'clients_id': serializeParam(
          _clientsId,
          ParamType.String,
          isList: true,
        ),
        'employeer': serializeParam(
          _employeer,
          ParamType.DataStruct,
        ),
        'store': serializeParam(
          _store,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BenefitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BenefitsStruct(
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
        rules: deserializeParam(
          data['rules'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        benefitsValidateTypesId: deserializeParam(
          data['benefits_validate_types_id'],
          ParamType.String,
          false,
        ),
        validateDate: deserializeParam(
          data['validate_date'],
          ParamType.String,
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
        userGroupsId: deserializeParam(
          data['user_groups_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        clientsId: deserializeParam<String>(
          data['clients_id'],
          ParamType.String,
          true,
        ),
        employeer: deserializeStructParam(
          data['employeer'],
          ParamType.DataStruct,
          false,
          structBuilder: EmployeerStruct.fromSerializableMap,
        ),
        store: deserializeStructParam(
          data['store'],
          ParamType.DataStruct,
          false,
          structBuilder: StoreStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BenefitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BenefitsStruct &&
        id == other.id &&
        name == other.name &&
        benefitsCategoriesId == other.benefitsCategoriesId &&
        value == other.value &&
        rules == other.rules &&
        description == other.description &&
        benefitsValidateTypesId == other.benefitsValidateTypesId &&
        validateDate == other.validateDate &&
        isEnabled == other.isEnabled &&
        employeersId == other.employeersId &&
        userGroupsId == other.userGroupsId &&
        createdAt == other.createdAt &&
        code == other.code &&
        listEquality.equals(clientsId, other.clientsId) &&
        employeer == other.employeer &&
        store == other.store;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        benefitsCategoriesId,
        value,
        rules,
        description,
        benefitsValidateTypesId,
        validateDate,
        isEnabled,
        employeersId,
        userGroupsId,
        createdAt,
        code,
        clientsId,
        employeer,
        store
      ]);
}

BenefitsStruct createBenefitsStruct({
  String? id,
  String? name,
  String? benefitsCategoriesId,
  int? value,
  String? rules,
  String? description,
  String? benefitsValidateTypesId,
  String? validateDate,
  bool? isEnabled,
  String? employeersId,
  String? userGroupsId,
  int? createdAt,
  String? code,
  EmployeerStruct? employeer,
  StoreStruct? store,
}) =>
    BenefitsStruct(
      id: id,
      name: name,
      benefitsCategoriesId: benefitsCategoriesId,
      value: value,
      rules: rules,
      description: description,
      benefitsValidateTypesId: benefitsValidateTypesId,
      validateDate: validateDate,
      isEnabled: isEnabled,
      employeersId: employeersId,
      userGroupsId: userGroupsId,
      createdAt: createdAt,
      code: code,
      employeer: employeer ?? EmployeerStruct(),
      store: store ?? StoreStruct(),
    );
