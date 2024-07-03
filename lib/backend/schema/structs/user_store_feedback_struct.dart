// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStoreFeedbackStruct extends BaseStruct {
  UserStoreFeedbackStruct({
    String? id,
    ImageStruct? image,
  })  : _id = id,
        _image = image;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  static UserStoreFeedbackStruct fromMap(Map<String, dynamic> data) =>
      UserStoreFeedbackStruct(
        id: data['id'] as String?,
        image: ImageStruct.maybeFromMap(data['image']),
      );

  static UserStoreFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? UserStoreFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'image': _image?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserStoreFeedbackStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserStoreFeedbackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStoreFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStoreFeedbackStruct &&
        id == other.id &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([id, image]);
}

UserStoreFeedbackStruct createUserStoreFeedbackStruct({
  String? id,
  ImageStruct? image,
}) =>
    UserStoreFeedbackStruct(
      id: id,
      image: image ?? ImageStruct(),
    );
