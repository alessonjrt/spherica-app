// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackStruct extends BaseStruct {
  FeedbackStruct({
    String? id,
    String? subject,
    String? message,
    String? answer,
    FeedbackStatus? status,
    ClientFeedbackStruct? client,
    bool? isEnabled,
    String? storesId,
    String? createdAt,
    StoreFeedbackStruct? store,
    bool? read,
  })  : _id = id,
        _subject = subject,
        _message = message,
        _answer = answer,
        _status = status,
        _client = client,
        _isEnabled = isEnabled,
        _storesId = storesId,
        _createdAt = createdAt,
        _store = store,
        _read = read;

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

  // "client" field.
  ClientFeedbackStruct? _client;
  ClientFeedbackStruct get client => _client ?? ClientFeedbackStruct();
  set client(ClientFeedbackStruct? val) => _client = val;

  void updateClient(Function(ClientFeedbackStruct) updateFn) {
    updateFn(_client ??= ClientFeedbackStruct());
  }

  bool hasClient() => _client != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  set isEnabled(bool? val) => _isEnabled = val;

  bool hasIsEnabled() => _isEnabled != null;

  // "stores_id" field.
  String? _storesId;
  String get storesId => _storesId ?? '';
  set storesId(String? val) => _storesId = val;

  bool hasStoresId() => _storesId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "store" field.
  StoreFeedbackStruct? _store;
  StoreFeedbackStruct get store => _store ?? StoreFeedbackStruct();
  set store(StoreFeedbackStruct? val) => _store = val;

  void updateStore(Function(StoreFeedbackStruct) updateFn) {
    updateFn(_store ??= StoreFeedbackStruct());
  }

  bool hasStore() => _store != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  set read(bool? val) => _read = val;

  bool hasRead() => _read != null;

  static FeedbackStruct fromMap(Map<String, dynamic> data) => FeedbackStruct(
        id: data['id'] as String?,
        subject: data['subject'] as String?,
        message: data['message'] as String?,
        answer: data['answer'] as String?,
        status: deserializeEnum<FeedbackStatus>(data['status']),
        client: ClientFeedbackStruct.maybeFromMap(data['client']),
        isEnabled: data['isEnabled'] as bool?,
        storesId: data['stores_id'] as String?,
        createdAt: data['created_at'] as String?,
        store: StoreFeedbackStruct.maybeFromMap(data['store']),
        read: data['read'] as bool?,
      );

  static FeedbackStruct? maybeFromMap(dynamic data) =>
      data is Map ? FeedbackStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subject': _subject,
        'message': _message,
        'answer': _answer,
        'status': _status?.serialize(),
        'client': _client?.toMap(),
        'isEnabled': _isEnabled,
        'stores_id': _storesId,
        'created_at': _createdAt,
        'store': _store?.toMap(),
        'read': _read,
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
        'client': serializeParam(
          _client,
          ParamType.DataStruct,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
        'stores_id': serializeParam(
          _storesId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'store': serializeParam(
          _store,
          ParamType.DataStruct,
        ),
        'read': serializeParam(
          _read,
          ParamType.bool,
        ),
      }.withoutNulls;

  static FeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeedbackStruct(
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
        client: deserializeStructParam(
          data['client'],
          ParamType.DataStruct,
          false,
          structBuilder: ClientFeedbackStruct.fromSerializableMap,
        ),
        isEnabled: deserializeParam(
          data['isEnabled'],
          ParamType.bool,
          false,
        ),
        storesId: deserializeParam(
          data['stores_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        store: deserializeStructParam(
          data['store'],
          ParamType.DataStruct,
          false,
          structBuilder: StoreFeedbackStruct.fromSerializableMap,
        ),
        read: deserializeParam(
          data['read'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'FeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeedbackStruct &&
        id == other.id &&
        subject == other.subject &&
        message == other.message &&
        answer == other.answer &&
        status == other.status &&
        client == other.client &&
        isEnabled == other.isEnabled &&
        storesId == other.storesId &&
        createdAt == other.createdAt &&
        store == other.store &&
        read == other.read;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        subject,
        message,
        answer,
        status,
        client,
        isEnabled,
        storesId,
        createdAt,
        store,
        read
      ]);
}

FeedbackStruct createFeedbackStruct({
  String? id,
  String? subject,
  String? message,
  String? answer,
  FeedbackStatus? status,
  ClientFeedbackStruct? client,
  bool? isEnabled,
  String? storesId,
  String? createdAt,
  StoreFeedbackStruct? store,
  bool? read,
}) =>
    FeedbackStruct(
      id: id,
      subject: subject,
      message: message,
      answer: answer,
      status: status,
      client: client ?? ClientFeedbackStruct(),
      isEnabled: isEnabled,
      storesId: storesId,
      createdAt: createdAt,
      store: store ?? StoreFeedbackStruct(),
      read: read,
    );
