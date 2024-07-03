// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NpsVariationsStruct extends BaseStruct {
  NpsVariationsStruct({
    String? id,
    int? createdAt,
    String? title,
    String? description,
    String? response,
    String? type,
  })  : _id = id,
        _createdAt = createdAt,
        _title = title,
        _description = description,
        _response = response,
        _type = type;

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

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  set response(String? val) => _response = val;

  bool hasResponse() => _response != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static NpsVariationsStruct fromMap(Map<String, dynamic> data) =>
      NpsVariationsStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        title: data['title'] as String?,
        description: data['description'] as String?,
        response: data['response'] as String?,
        type: data['type'] as String?,
      );

  static NpsVariationsStruct? maybeFromMap(dynamic data) => data is Map
      ? NpsVariationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'title': _title,
        'description': _description,
        'response': _response,
        'type': _type,
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
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static NpsVariationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NpsVariationsStruct(
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
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        response: deserializeParam(
          data['response'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NpsVariationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NpsVariationsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        title == other.title &&
        description == other.description &&
        response == other.response &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, title, description, response, type]);
}

NpsVariationsStruct createNpsVariationsStruct({
  String? id,
  int? createdAt,
  String? title,
  String? description,
  String? response,
  String? type,
}) =>
    NpsVariationsStruct(
      id: id,
      createdAt: createdAt,
      title: title,
      description: description,
      response: response,
      type: type,
    );
