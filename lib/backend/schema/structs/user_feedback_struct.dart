// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFeedbackStruct extends BaseStruct {
  UserFeedbackStruct({
    String? id,
    String? name,
    String? phone,
    String? phoneWpp,
    String? email,
    ImageStruct? image,
  })  : _id = id,
        _name = name,
        _phone = phone,
        _phoneWpp = phoneWpp,
        _email = email,
        _image = image;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "phone_wpp" field.
  String? _phoneWpp;
  String get phoneWpp => _phoneWpp ?? '';
  set phoneWpp(String? val) => _phoneWpp = val;

  bool hasPhoneWpp() => _phoneWpp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  static UserFeedbackStruct fromMap(Map<String, dynamic> data) =>
      UserFeedbackStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        phoneWpp: data['phone_wpp'] as String?,
        email: data['email'] as String?,
        image: ImageStruct.maybeFromMap(data['image']),
      );

  static UserFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? UserFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'phone': _phone,
        'phone_wpp': _phoneWpp,
        'email': _email,
        'image': _image?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'phone_wpp': serializeParam(
          _phoneWpp,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserFeedbackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        phoneWpp: deserializeParam(
          data['phone_wpp'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
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
  String toString() => 'UserFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserFeedbackStruct &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        phoneWpp == other.phoneWpp &&
        email == other.email &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, phone, phoneWpp, email, image]);
}

UserFeedbackStruct createUserFeedbackStruct({
  String? id,
  String? name,
  String? phone,
  String? phoneWpp,
  String? email,
  ImageStruct? image,
}) =>
    UserFeedbackStruct(
      id: id,
      name: name,
      phone: phone,
      phoneWpp: phoneWpp,
      email: email,
      image: image ?? ImageStruct(),
    );
