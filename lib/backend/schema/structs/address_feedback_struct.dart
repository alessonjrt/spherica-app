// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressFeedbackStruct extends BaseStruct {
  AddressFeedbackStruct({
    String? id,
    String? state,
    String? city,
  })  : _id = id,
        _state = state,
        _city = city;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  static AddressFeedbackStruct fromMap(Map<String, dynamic> data) =>
      AddressFeedbackStruct(
        id: data['id'] as String?,
        state: data['state'] as String?,
        city: data['city'] as String?,
      );

  static AddressFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? AddressFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'state': _state,
        'city': _city,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressFeedbackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressFeedbackStruct &&
        id == other.id &&
        state == other.state &&
        city == other.city;
  }

  @override
  int get hashCode => const ListEquality().hash([id, state, city]);
}

AddressFeedbackStruct createAddressFeedbackStruct({
  String? id,
  String? state,
  String? city,
}) =>
    AddressFeedbackStruct(
      id: id,
      state: state,
      city: city,
    );
