// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? id,
    String? name,
    String? clientsId,
    int? createdAt,
  })  : _id = id,
        _name = name,
        _clientsId = clientsId,
        _createdAt = createdAt;

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

  // "clients_id" field.
  String? _clientsId;
  String get clientsId => _clientsId ?? '';
  set clientsId(String? val) => _clientsId = val;

  bool hasClientsId() => _clientsId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        clientsId: data['clients_id'] as String?,
        createdAt: castToType<int>(data['created_at']),
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'clients_id': _clientsId,
        'created_at': _createdAt,
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
        'clients_id': serializeParam(
          _clientsId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileStruct(
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
        clientsId: deserializeParam(
          data['clients_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileStruct &&
        id == other.id &&
        name == other.name &&
        clientsId == other.clientsId &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, clientsId, createdAt]);
}

ProfileStruct createProfileStruct({
  String? id,
  String? name,
  String? clientsId,
  int? createdAt,
}) =>
    ProfileStruct(
      id: id,
      name: name,
      clientsId: clientsId,
      createdAt: createdAt,
    );
