// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreFeedbackStruct extends BaseStruct {
  StoreFeedbackStruct({
    String? id,
    String? usersId,
    String? socialName,
    UserStoreFeedbackStruct? user,
  })  : _id = id,
        _usersId = usersId,
        _socialName = socialName,
        _user = user;

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

  // "social_name" field.
  String? _socialName;
  String get socialName => _socialName ?? '';
  set socialName(String? val) => _socialName = val;

  bool hasSocialName() => _socialName != null;

  // "user" field.
  UserStoreFeedbackStruct? _user;
  UserStoreFeedbackStruct get user => _user ?? UserStoreFeedbackStruct();
  set user(UserStoreFeedbackStruct? val) => _user = val;

  void updateUser(Function(UserStoreFeedbackStruct) updateFn) {
    updateFn(_user ??= UserStoreFeedbackStruct());
  }

  bool hasUser() => _user != null;

  static StoreFeedbackStruct fromMap(Map<String, dynamic> data) =>
      StoreFeedbackStruct(
        id: data['id'] as String?,
        usersId: data['users_id'] as String?,
        socialName: data['social_name'] as String?,
        user: UserStoreFeedbackStruct.maybeFromMap(data['user']),
      );

  static StoreFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? StoreFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'users_id': _usersId,
        'social_name': _socialName,
        'user': _user?.toMap(),
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
        'social_name': serializeParam(
          _socialName,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static StoreFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreFeedbackStruct(
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
        socialName: deserializeParam(
          data['social_name'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStoreFeedbackStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StoreFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreFeedbackStruct &&
        id == other.id &&
        usersId == other.usersId &&
        socialName == other.socialName &&
        user == other.user;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, usersId, socialName, user]);
}

StoreFeedbackStruct createStoreFeedbackStruct({
  String? id,
  String? usersId,
  String? socialName,
  UserStoreFeedbackStruct? user,
}) =>
    StoreFeedbackStruct(
      id: id,
      usersId: usersId,
      socialName: socialName,
      user: user ?? UserStoreFeedbackStruct(),
    );
