// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BenefitEmployeersStruct extends BaseStruct {
  BenefitEmployeersStruct({
    String? usersId,
    BenefitUserStruct? user,
  })  : _usersId = usersId,
        _user = user;

  // "users_id" field.
  String? _usersId;
  String get usersId => _usersId ?? '';
  set usersId(String? val) => _usersId = val;

  bool hasUsersId() => _usersId != null;

  // "user" field.
  BenefitUserStruct? _user;
  BenefitUserStruct get user => _user ?? BenefitUserStruct();
  set user(BenefitUserStruct? val) => _user = val;

  void updateUser(Function(BenefitUserStruct) updateFn) {
    updateFn(_user ??= BenefitUserStruct());
  }

  bool hasUser() => _user != null;

  static BenefitEmployeersStruct fromMap(Map<String, dynamic> data) =>
      BenefitEmployeersStruct(
        usersId: data['users_id'] as String?,
        user: BenefitUserStruct.maybeFromMap(data['user']),
      );

  static BenefitEmployeersStruct? maybeFromMap(dynamic data) => data is Map
      ? BenefitEmployeersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'users_id': _usersId,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'users_id': serializeParam(
          _usersId,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BenefitEmployeersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BenefitEmployeersStruct(
        usersId: deserializeParam(
          data['users_id'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: BenefitUserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BenefitEmployeersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BenefitEmployeersStruct &&
        usersId == other.usersId &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([usersId, user]);
}

BenefitEmployeersStruct createBenefitEmployeersStruct({
  String? usersId,
  BenefitUserStruct? user,
}) =>
    BenefitEmployeersStruct(
      usersId: usersId,
      user: user ?? BenefitUserStruct(),
    );
