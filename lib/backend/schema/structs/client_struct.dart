// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientStruct extends BaseStruct {
  ClientStruct({
    String? id,
    String? usersId,
    String? rg,
    String? cnpj,
    String? gender,
    String? diagnostic,
    String? lensesOrGlasses,
    String? typeLenses,
    String? brandLenses,
    String? addressesId,
    int? bornDate,
    int? createdAt,
    bool? isEnabled,
  })  : _id = id,
        _usersId = usersId,
        _rg = rg,
        _cnpj = cnpj,
        _gender = gender,
        _diagnostic = diagnostic,
        _lensesOrGlasses = lensesOrGlasses,
        _typeLenses = typeLenses,
        _brandLenses = brandLenses,
        _addressesId = addressesId,
        _bornDate = bornDate,
        _createdAt = createdAt,
        _isEnabled = isEnabled;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "users_id" field.
  String? _usersId;
  String get usersId => _usersId ?? '';
  set usersId(String? val) => _usersId = val;

  bool hasUsersId() => _usersId != null;

  // "rg" field.
  String? _rg;
  String get rg => _rg ?? '';
  set rg(String? val) => _rg = val;

  bool hasRg() => _rg != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "diagnostic" field.
  String? _diagnostic;
  String get diagnostic => _diagnostic ?? '';
  set diagnostic(String? val) => _diagnostic = val;

  bool hasDiagnostic() => _diagnostic != null;

  // "lenses_or_glasses" field.
  String? _lensesOrGlasses;
  String get lensesOrGlasses => _lensesOrGlasses ?? '';
  set lensesOrGlasses(String? val) => _lensesOrGlasses = val;

  bool hasLensesOrGlasses() => _lensesOrGlasses != null;

  // "type_lenses" field.
  String? _typeLenses;
  String get typeLenses => _typeLenses ?? '';
  set typeLenses(String? val) => _typeLenses = val;

  bool hasTypeLenses() => _typeLenses != null;

  // "brand_lenses" field.
  String? _brandLenses;
  String get brandLenses => _brandLenses ?? '';
  set brandLenses(String? val) => _brandLenses = val;

  bool hasBrandLenses() => _brandLenses != null;

  // "addresses_id" field.
  String? _addressesId;
  String get addressesId => _addressesId ?? '';
  set addressesId(String? val) => _addressesId = val;

  bool hasAddressesId() => _addressesId != null;

  // "bornDate" field.
  int? _bornDate;
  int get bornDate => _bornDate ?? 0;
  set bornDate(int? val) => _bornDate = val;

  void incrementBornDate(int amount) => bornDate = bornDate + amount;

  bool hasBornDate() => _bornDate != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  set isEnabled(bool? val) => _isEnabled = val;

  bool hasIsEnabled() => _isEnabled != null;

  static ClientStruct fromMap(Map<String, dynamic> data) => ClientStruct(
        id: data['id'] as String?,
        usersId: data['users_id'] as String?,
        rg: data['rg'] as String?,
        cnpj: data['cnpj'] as String?,
        gender: data['gender'] as String?,
        diagnostic: data['diagnostic'] as String?,
        lensesOrGlasses: data['lenses_or_glasses'] as String?,
        typeLenses: data['type_lenses'] as String?,
        brandLenses: data['brand_lenses'] as String?,
        addressesId: data['addresses_id'] as String?,
        bornDate: castToType<int>(data['bornDate']),
        createdAt: castToType<int>(data['created_at']),
        isEnabled: data['isEnabled'] as bool?,
      );

  static ClientStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClientStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'users_id': _usersId,
        'rg': _rg,
        'cnpj': _cnpj,
        'gender': _gender,
        'diagnostic': _diagnostic,
        'lenses_or_glasses': _lensesOrGlasses,
        'type_lenses': _typeLenses,
        'brand_lenses': _brandLenses,
        'addresses_id': _addressesId,
        'bornDate': _bornDate,
        'created_at': _createdAt,
        'isEnabled': _isEnabled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'users_id': serializeParam(
          _usersId,
          ParamType.String,
        ),
        'rg': serializeParam(
          _rg,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'diagnostic': serializeParam(
          _diagnostic,
          ParamType.String,
        ),
        'lenses_or_glasses': serializeParam(
          _lensesOrGlasses,
          ParamType.String,
        ),
        'type_lenses': serializeParam(
          _typeLenses,
          ParamType.String,
        ),
        'brand_lenses': serializeParam(
          _brandLenses,
          ParamType.String,
        ),
        'addresses_id': serializeParam(
          _addressesId,
          ParamType.String,
        ),
        'bornDate': serializeParam(
          _bornDate,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ClientStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        usersId: deserializeParam(
          data['users_id'],
          ParamType.String,
          false,
        ),
        rg: deserializeParam(
          data['rg'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        diagnostic: deserializeParam(
          data['diagnostic'],
          ParamType.String,
          false,
        ),
        lensesOrGlasses: deserializeParam(
          data['lenses_or_glasses'],
          ParamType.String,
          false,
        ),
        typeLenses: deserializeParam(
          data['type_lenses'],
          ParamType.String,
          false,
        ),
        brandLenses: deserializeParam(
          data['brand_lenses'],
          ParamType.String,
          false,
        ),
        addressesId: deserializeParam(
          data['addresses_id'],
          ParamType.String,
          false,
        ),
        bornDate: deserializeParam(
          data['bornDate'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        isEnabled: deserializeParam(
          data['isEnabled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ClientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientStruct &&
        id == other.id &&
        usersId == other.usersId &&
        rg == other.rg &&
        cnpj == other.cnpj &&
        gender == other.gender &&
        diagnostic == other.diagnostic &&
        lensesOrGlasses == other.lensesOrGlasses &&
        typeLenses == other.typeLenses &&
        brandLenses == other.brandLenses &&
        addressesId == other.addressesId &&
        bornDate == other.bornDate &&
        createdAt == other.createdAt &&
        isEnabled == other.isEnabled;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        usersId,
        rg,
        cnpj,
        gender,
        diagnostic,
        lensesOrGlasses,
        typeLenses,
        brandLenses,
        addressesId,
        bornDate,
        createdAt,
        isEnabled
      ]);
}

ClientStruct createClientStruct({
  String? id,
  String? usersId,
  String? rg,
  String? cnpj,
  String? gender,
  String? diagnostic,
  String? lensesOrGlasses,
  String? typeLenses,
  String? brandLenses,
  String? addressesId,
  int? bornDate,
  int? createdAt,
  bool? isEnabled,
}) =>
    ClientStruct(
      id: id,
      usersId: usersId,
      rg: rg,
      cnpj: cnpj,
      gender: gender,
      diagnostic: diagnostic,
      lensesOrGlasses: lensesOrGlasses,
      typeLenses: typeLenses,
      brandLenses: brandLenses,
      addressesId: addressesId,
      bornDate: bornDate,
      createdAt: createdAt,
      isEnabled: isEnabled,
    );
