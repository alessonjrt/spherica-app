// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreStruct extends BaseStruct {
  StoreStruct({
    String? id,
    String? socialName,
  })  : _id = id,
        _socialName = socialName;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "social_name" field.
  String? _socialName;
  String get socialName => _socialName ?? '';
  set socialName(String? val) => _socialName = val;

  bool hasSocialName() => _socialName != null;

  static StoreStruct fromMap(Map<String, dynamic> data) => StoreStruct(
        id: data['id'] as String?,
        socialName: data['social_name'] as String?,
      );

  static StoreStruct? maybeFromMap(dynamic data) =>
      data is Map ? StoreStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'social_name': _socialName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'social_name': serializeParam(
          _socialName,
          ParamType.String,
        ),
      }.withoutNulls;

  static StoreStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        socialName: deserializeParam(
          data['social_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StoreStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreStruct &&
        id == other.id &&
        socialName == other.socialName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, socialName]);
}

StoreStruct createStoreStruct({
  String? id,
  String? socialName,
}) =>
    StoreStruct(
      id: id,
      socialName: socialName,
    );
