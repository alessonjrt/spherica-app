// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeerStruct extends BaseStruct {
  EmployeerStruct({
    String? id,
  }) : _id = id;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static EmployeerStruct fromMap(Map<String, dynamic> data) => EmployeerStruct(
        id: data['id'] as String?,
      );

  static EmployeerStruct? maybeFromMap(dynamic data) => data is Map
      ? EmployeerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmployeerStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmployeerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmployeerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmployeerStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

EmployeerStruct createEmployeerStruct({
  String? id,
}) =>
    EmployeerStruct(
      id: id,
    );
