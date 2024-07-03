// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientFeedbackStruct extends BaseStruct {
  ClientFeedbackStruct({
    String? id,
    UserFeedbackStruct? user,
    AddressFeedbackStruct? address,
  })  : _id = id,
        _user = user,
        _address = address;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user" field.
  UserFeedbackStruct? _user;
  UserFeedbackStruct get user => _user ?? UserFeedbackStruct();
  set user(UserFeedbackStruct? val) => _user = val;

  void updateUser(Function(UserFeedbackStruct) updateFn) {
    updateFn(_user ??= UserFeedbackStruct());
  }

  bool hasUser() => _user != null;

  // "address" field.
  AddressFeedbackStruct? _address;
  AddressFeedbackStruct get address => _address ?? AddressFeedbackStruct();
  set address(AddressFeedbackStruct? val) => _address = val;

  void updateAddress(Function(AddressFeedbackStruct) updateFn) {
    updateFn(_address ??= AddressFeedbackStruct());
  }

  bool hasAddress() => _address != null;

  static ClientFeedbackStruct fromMap(Map<String, dynamic> data) =>
      ClientFeedbackStruct(
        id: data['id'] as String?,
        user: UserFeedbackStruct.maybeFromMap(data['user']),
        address: AddressFeedbackStruct.maybeFromMap(data['address']),
      );

  static ClientFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? ClientFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user': _user?.toMap(),
        'address': _address?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ClientFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientFeedbackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserFeedbackStruct.fromSerializableMap,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressFeedbackStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ClientFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientFeedbackStruct &&
        id == other.id &&
        user == other.user &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([id, user, address]);
}

ClientFeedbackStruct createClientFeedbackStruct({
  String? id,
  UserFeedbackStruct? user,
  AddressFeedbackStruct? address,
}) =>
    ClientFeedbackStruct(
      id: id,
      user: user ?? UserFeedbackStruct(),
      address: address ?? AddressFeedbackStruct(),
    );
