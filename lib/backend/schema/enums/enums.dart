import 'package:collection/collection.dart';

enum UserType {
  client,
  employer,
  master,
  store,
}

enum FeedbackStatus {
  waiting,
  progress,
  finish,
}

enum ClientDiagnostic {
  myopia,
  astigmastic,
  hyperopia,
  prebyopia,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (FeedbackStatus):
      return FeedbackStatus.values.deserialize(value) as T?;
    case (ClientDiagnostic):
      return ClientDiagnostic.values.deserialize(value) as T?;
    default:
      return null;
  }
}
