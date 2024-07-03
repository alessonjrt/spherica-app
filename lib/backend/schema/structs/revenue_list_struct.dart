// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RevenueListStruct extends BaseStruct {
  RevenueListStruct({
    String? id,
    String? title,
    String? profilesId,
    String? description,
    String? createdAt,
    ImageStruct? image,
  })  : _id = id,
        _title = title,
        _profilesId = profilesId,
        _description = description,
        _createdAt = createdAt,
        _image = image;

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

  // "profiles_id" field.
  String? _profilesId;
  String get profilesId => _profilesId ?? '';
  set profilesId(String? val) => _profilesId = val;

  bool hasProfilesId() => _profilesId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  static RevenueListStruct fromMap(Map<String, dynamic> data) =>
      RevenueListStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        profilesId: data['profiles_id'] as String?,
        description: data['description'] as String?,
        createdAt: data['created_at'] as String?,
        image: ImageStruct.maybeFromMap(data['image']),
      );

  static RevenueListStruct? maybeFromMap(dynamic data) => data is Map
      ? RevenueListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'profiles_id': _profilesId,
        'description': _description,
        'created_at': _createdAt,
        'image': _image?.toMap(),
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
        'profiles_id': serializeParam(
          _profilesId,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RevenueListStruct fromSerializableMap(Map<String, dynamic> data) =>
      RevenueListStruct(
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
        profilesId: deserializeParam(
          data['profiles_id'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
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
  String toString() => 'RevenueListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RevenueListStruct &&
        id == other.id &&
        title == other.title &&
        profilesId == other.profilesId &&
        description == other.description &&
        createdAt == other.createdAt &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, title, profilesId, description, createdAt, image]);
}

RevenueListStruct createRevenueListStruct({
  String? id,
  String? title,
  String? profilesId,
  String? description,
  String? createdAt,
  ImageStruct? image,
}) =>
    RevenueListStruct(
      id: id,
      title: title,
      profilesId: profilesId,
      description: description,
      createdAt: createdAt,
      image: image ?? ImageStruct(),
    );
