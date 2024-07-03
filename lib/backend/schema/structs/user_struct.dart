// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    int? createdAt,
    String? name,
    String? cpf,
    String? phone,
    String? phoneWpp,
    String? email,
    UserType? type,
    ImageStruct? image,
    ClientStruct? client,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _cpf = cpf,
        _phone = phone,
        _phoneWpp = phoneWpp,
        _email = email,
        _type = type,
        _image = image,
        _client = client;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "phone_wpp" field.
  String? _phoneWpp;
  String get phoneWpp => _phoneWpp ?? '';
  set phoneWpp(String? val) => _phoneWpp = val;

  bool hasPhoneWpp() => _phoneWpp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "type" field.
  UserType? _type;
  UserType? get type => _type;
  set type(UserType? val) => _type = val;

  bool hasType() => _type != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  // "client" field.
  ClientStruct? _client;
  ClientStruct get client => _client ?? ClientStruct();
  set client(ClientStruct? val) => _client = val;

  void updateClient(Function(ClientStruct) updateFn) {
    updateFn(_client ??= ClientStruct());
  }

  bool hasClient() => _client != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
        cpf: data['cpf'] as String?,
        phone: data['phone'] as String?,
        phoneWpp: data['phone_wpp'] as String?,
        email: data['email'] as String?,
        type: deserializeEnum<UserType>(data['type']),
        image: ImageStruct.maybeFromMap(data['image']),
        client: ClientStruct.maybeFromMap(data['client']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'cpf': _cpf,
        'phone': _phone,
        'phone_wpp': _phoneWpp,
        'email': _email,
        'type': _type?.serialize(),
        'image': _image?.toMap(),
        'client': _client?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'phone_wpp': serializeParam(
          _phoneWpp,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
        'client': serializeParam(
          _client,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        phoneWpp: deserializeParam(
          data['phone_wpp'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<UserType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
        client: deserializeStructParam(
          data['client'],
          ParamType.DataStruct,
          false,
          structBuilder: ClientStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        cpf == other.cpf &&
        phone == other.phone &&
        phoneWpp == other.phoneWpp &&
        email == other.email &&
        type == other.type &&
        image == other.image &&
        client == other.client;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, createdAt, name, cpf, phone, phoneWpp, email, type, image, client]);
}

UserStruct createUserStruct({
  String? id,
  int? createdAt,
  String? name,
  String? cpf,
  String? phone,
  String? phoneWpp,
  String? email,
  UserType? type,
  ImageStruct? image,
  ClientStruct? client,
}) =>
    UserStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      cpf: cpf,
      phone: phone,
      phoneWpp: phoneWpp,
      email: email,
      type: type,
      image: image ?? ImageStruct(),
      client: client ?? ClientStruct(),
    );
