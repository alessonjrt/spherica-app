// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NpsStruct extends BaseStruct {
  NpsStruct({
    String? id,
    String? title,
    String? question,
    int? note,
    String? description,
    String? clientsId,
    String? storesId,
    int? createdAt,
    String? message,
    String? type,
    String? npsVariationsId,
    String? secondQuestion,
    String? responseType,
  })  : _id = id,
        _title = title,
        _question = question,
        _note = note,
        _description = description,
        _clientsId = clientsId,
        _storesId = storesId,
        _createdAt = createdAt,
        _message = message,
        _type = type,
        _npsVariationsId = npsVariationsId,
        _secondQuestion = secondQuestion,
        _responseType = responseType;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "note" field.
  int? _note;
  int get note => _note ?? 0;
  set note(int? val) => _note = val;

  void incrementNote(int amount) => note = note + amount;

  bool hasNote() => _note != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "clients_id" field.
  String? _clientsId;
  String get clientsId => _clientsId ?? '';
  set clientsId(String? val) => _clientsId = val;

  bool hasClientsId() => _clientsId != null;

  // "stores_id" field.
  String? _storesId;
  String get storesId => _storesId ?? '';
  set storesId(String? val) => _storesId = val;

  bool hasStoresId() => _storesId != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "nps_variations_id" field.
  String? _npsVariationsId;
  String get npsVariationsId => _npsVariationsId ?? '';
  set npsVariationsId(String? val) => _npsVariationsId = val;

  bool hasNpsVariationsId() => _npsVariationsId != null;

  // "second_question" field.
  String? _secondQuestion;
  String get secondQuestion => _secondQuestion ?? '';
  set secondQuestion(String? val) => _secondQuestion = val;

  bool hasSecondQuestion() => _secondQuestion != null;

  // "response_type" field.
  String? _responseType;
  String get responseType => _responseType ?? '';
  set responseType(String? val) => _responseType = val;

  bool hasResponseType() => _responseType != null;

  static NpsStruct fromMap(Map<String, dynamic> data) => NpsStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        question: data['question'] as String?,
        note: castToType<int>(data['note']),
        description: data['description'] as String?,
        clientsId: data['clients_id'] as String?,
        storesId: data['stores_id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        message: data['message'] as String?,
        type: data['type'] as String?,
        npsVariationsId: data['nps_variations_id'] as String?,
        secondQuestion: data['second_question'] as String?,
        responseType: data['response_type'] as String?,
      );

  static NpsStruct? maybeFromMap(dynamic data) =>
      data is Map ? NpsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'question': _question,
        'note': _note,
        'description': _description,
        'clients_id': _clientsId,
        'stores_id': _storesId,
        'created_at': _createdAt,
        'message': _message,
        'type': _type,
        'nps_variations_id': _npsVariationsId,
        'second_question': _secondQuestion,
        'response_type': _responseType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'note': serializeParam(
          _note,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'clients_id': serializeParam(
          _clientsId,
          ParamType.String,
        ),
        'stores_id': serializeParam(
          _storesId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'nps_variations_id': serializeParam(
          _npsVariationsId,
          ParamType.String,
        ),
        'second_question': serializeParam(
          _secondQuestion,
          ParamType.String,
        ),
        'response_type': serializeParam(
          _responseType,
          ParamType.String,
        ),
      }.withoutNulls;

  static NpsStruct fromSerializableMap(Map<String, dynamic> data) => NpsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        clientsId: deserializeParam(
          data['clients_id'],
          ParamType.String,
          false,
        ),
        storesId: deserializeParam(
          data['stores_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        npsVariationsId: deserializeParam(
          data['nps_variations_id'],
          ParamType.String,
          false,
        ),
        secondQuestion: deserializeParam(
          data['second_question'],
          ParamType.String,
          false,
        ),
        responseType: deserializeParam(
          data['response_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NpsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NpsStruct &&
        id == other.id &&
        title == other.title &&
        question == other.question &&
        note == other.note &&
        description == other.description &&
        clientsId == other.clientsId &&
        storesId == other.storesId &&
        createdAt == other.createdAt &&
        message == other.message &&
        type == other.type &&
        npsVariationsId == other.npsVariationsId &&
        secondQuestion == other.secondQuestion &&
        responseType == other.responseType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        question,
        note,
        description,
        clientsId,
        storesId,
        createdAt,
        message,
        type,
        npsVariationsId,
        secondQuestion,
        responseType
      ]);
}

NpsStruct createNpsStruct({
  String? id,
  String? title,
  String? question,
  int? note,
  String? description,
  String? clientsId,
  String? storesId,
  int? createdAt,
  String? message,
  String? type,
  String? npsVariationsId,
  String? secondQuestion,
  String? responseType,
}) =>
    NpsStruct(
      id: id,
      title: title,
      question: question,
      note: note,
      description: description,
      clientsId: clientsId,
      storesId: storesId,
      createdAt: createdAt,
      message: message,
      type: type,
      npsVariationsId: npsVariationsId,
      secondQuestion: secondQuestion,
      responseType: responseType,
    );
