// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMeStruct extends BaseStruct {
  UserMeStruct({
    UserStruct? user,
    ClientStruct? client,
  })  : _user = user,
        _client = client;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "client" field.
  ClientStruct? _client;
  ClientStruct get client => _client ?? ClientStruct();
  set client(ClientStruct? val) => _client = val;

  void updateClient(Function(ClientStruct) updateFn) {
    updateFn(_client ??= ClientStruct());
  }

  bool hasClient() => _client != null;

  static UserMeStruct fromMap(Map<String, dynamic> data) => UserMeStruct(
        user: UserStruct.maybeFromMap(data['user']),
        client: ClientStruct.maybeFromMap(data['client']),
      );

  static UserMeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserMeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user': _user?.toMap(),
        'client': _client?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'client': serializeParam(
          _client,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserMeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMeStruct(
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        client: deserializeStructParam(
          data['client'],
          ParamType.DataStruct,
          false,
          structBuilder: ClientStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserMeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMeStruct &&
        user == other.user &&
        client == other.client;
  }

  @override
  int get hashCode => const ListEquality().hash([user, client]);
}

UserMeStruct createUserMeStruct({
  UserStruct? user,
  ClientStruct? client,
}) =>
    UserMeStruct(
      user: user ?? UserStruct(),
      client: client ?? ClientStruct(),
    );
