// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedFeedbackStruct extends BaseStruct {
  SelectedFeedbackStruct({
    String? id,
    String? subject,
    String? message,
    String? answer,
    FeedbackStatus? status,
    bool? isEnabled,
    String? clientsId,
    String? storesId,
    StoreFeedbackStruct? store,
    int? createdAt,
    int? updateAt,
  })  : _id = id,
        _subject = subject,
        _message = message,
        _answer = answer,
        _status = status,
        _isEnabled = isEnabled,
        _clientsId = clientsId,
        _storesId = storesId,
        _store = store,
        _createdAt = createdAt,
        _updateAt = updateAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;

  bool hasSubject() => _subject != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;

  bool hasAnswer() => _answer != null;

  // "status" field.
  FeedbackStatus? _status;
  FeedbackStatus? get status => _status;
  set status(FeedbackStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  set isEnabled(bool? val) => _isEnabled = val;

  bool hasIsEnabled() => _isEnabled != null;

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

  // "store" field.
  StoreFeedbackStruct? _store;
  StoreFeedbackStruct get store => _store ?? StoreFeedbackStruct();
  set store(StoreFeedbackStruct? val) => _store = val;

  void updateStore(Function(StoreFeedbackStruct) updateFn) {
    updateFn(_store ??= StoreFeedbackStruct());
  }

  bool hasStore() => _store != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "update_at" field.
  int? _updateAt;
  int get updateAt => _updateAt ?? 0;
  set updateAt(int? val) => _updateAt = val;

  void incrementUpdateAt(int amount) => updateAt = updateAt + amount;

  bool hasUpdateAt() => _updateAt != null;

  static SelectedFeedbackStruct fromMap(Map<String, dynamic> data) =>
      SelectedFeedbackStruct(
        id: data['id'] as String?,
        subject: data['subject'] as String?,
        message: data['message'] as String?,
        answer: data['answer'] as String?,
        status: deserializeEnum<FeedbackStatus>(data['status']),
        isEnabled: data['isEnabled'] as bool?,
        clientsId: data['clients_id'] as String?,
        storesId: data['stores_id'] as String?,
        store: StoreFeedbackStruct.maybeFromMap(data['store']),
        createdAt: castToType<int>(data['created_at']),
        updateAt: castToType<int>(data['update_at']),
      );

  static SelectedFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subject': _subject,
        'message': _message,
        'answer': _answer,
        'status': _status?.serialize(),
        'isEnabled': _isEnabled,
        'clients_id': _clientsId,
        'stores_id': _storesId,
        'store': _store?.toMap(),
        'created_at': _createdAt,
        'update_at': _updateAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
        'clients_id': serializeParam(
          _clientsId,
          ParamType.String,
        ),
        'stores_id': serializeParam(
          _storesId,
          ParamType.String,
        ),
        'store': serializeParam(
          _store,
          ParamType.DataStruct,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'update_at': serializeParam(
          _updateAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static SelectedFeedbackStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedFeedbackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        status: deserializeParam<FeedbackStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
        isEnabled: deserializeParam(
          data['isEnabled'],
          ParamType.bool,
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
        store: deserializeStructParam(
          data['store'],
          ParamType.DataStruct,
          false,
          structBuilder: StoreFeedbackStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        updateAt: deserializeParam(
          data['update_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SelectedFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedFeedbackStruct &&
        id == other.id &&
        subject == other.subject &&
        message == other.message &&
        answer == other.answer &&
        status == other.status &&
        isEnabled == other.isEnabled &&
        clientsId == other.clientsId &&
        storesId == other.storesId &&
        store == other.store &&
        createdAt == other.createdAt &&
        updateAt == other.updateAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        subject,
        message,
        answer,
        status,
        isEnabled,
        clientsId,
        storesId,
        store,
        createdAt,
        updateAt
      ]);
}

SelectedFeedbackStruct createSelectedFeedbackStruct({
  String? id,
  String? subject,
  String? message,
  String? answer,
  FeedbackStatus? status,
  bool? isEnabled,
  String? clientsId,
  String? storesId,
  StoreFeedbackStruct? store,
  int? createdAt,
  int? updateAt,
}) =>
    SelectedFeedbackStruct(
      id: id,
      subject: subject,
      message: message,
      answer: answer,
      status: status,
      isEnabled: isEnabled,
      clientsId: clientsId,
      storesId: storesId,
      store: store ?? StoreFeedbackStruct(),
      createdAt: createdAt,
      updateAt: updateAt,
    );
