// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerStruct extends BaseStruct {
  BannerStruct({
    String? id,
    String? title,
    String? validateDate,
    String? buttonText,
    String? url,
    String? description,
    String? status,
    String? storesId,
    int? createdAt,
    List<String>? bannersCategoriesId,
    ImageStruct? image,
    String? terms,
  })  : _id = id,
        _title = title,
        _validateDate = validateDate,
        _buttonText = buttonText,
        _url = url,
        _description = description,
        _status = status,
        _storesId = storesId,
        _createdAt = createdAt,
        _bannersCategoriesId = bannersCategoriesId,
        _image = image,
        _terms = terms;

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

  // "validate_date" field.
  String? _validateDate;
  String get validateDate => _validateDate ?? '';
  set validateDate(String? val) => _validateDate = val;

  bool hasValidateDate() => _validateDate != null;

  // "button_text" field.
  String? _buttonText;
  String get buttonText => _buttonText ?? '';
  set buttonText(String? val) => _buttonText = val;

  bool hasButtonText() => _buttonText != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

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

  // "banners_categories_id" field.
  List<String>? _bannersCategoriesId;
  List<String> get bannersCategoriesId => _bannersCategoriesId ?? const [];
  set bannersCategoriesId(List<String>? val) => _bannersCategoriesId = val;

  void updateBannersCategoriesId(Function(List<String>) updateFn) {
    updateFn(_bannersCategoriesId ??= []);
  }

  bool hasBannersCategoriesId() => _bannersCategoriesId != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  // "terms" field.
  String? _terms;
  String get terms => _terms ?? '';
  set terms(String? val) => _terms = val;

  bool hasTerms() => _terms != null;

  static BannerStruct fromMap(Map<String, dynamic> data) => BannerStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        validateDate: data['validate_date'] as String?,
        buttonText: data['button_text'] as String?,
        url: data['url'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        storesId: data['stores_id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        bannersCategoriesId: getDataList(data['banners_categories_id']),
        image: ImageStruct.maybeFromMap(data['image']),
        terms: data['terms'] as String?,
      );

  static BannerStruct? maybeFromMap(dynamic data) =>
      data is Map ? BannerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'validate_date': _validateDate,
        'button_text': _buttonText,
        'url': _url,
        'description': _description,
        'status': _status,
        'stores_id': _storesId,
        'created_at': _createdAt,
        'banners_categories_id': _bannersCategoriesId,
        'image': _image?.toMap(),
        'terms': _terms,
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
        'validate_date': serializeParam(
          _validateDate,
          ParamType.String,
        ),
        'button_text': serializeParam(
          _buttonText,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
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
        'banners_categories_id': serializeParam(
          _bannersCategoriesId,
          ParamType.String,
          isList: true,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
        'terms': serializeParam(
          _terms,
          ParamType.String,
        ),
      }.withoutNulls;

  static BannerStruct fromSerializableMap(Map<String, dynamic> data) =>
      BannerStruct(
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
        validateDate: deserializeParam(
          data['validate_date'],
          ParamType.String,
          false,
        ),
        buttonText: deserializeParam(
          data['button_text'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
        bannersCategoriesId: deserializeParam<String>(
          data['banners_categories_id'],
          ParamType.String,
          true,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
        terms: deserializeParam(
          data['terms'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BannerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BannerStruct &&
        id == other.id &&
        title == other.title &&
        validateDate == other.validateDate &&
        buttonText == other.buttonText &&
        url == other.url &&
        description == other.description &&
        status == other.status &&
        storesId == other.storesId &&
        createdAt == other.createdAt &&
        listEquality.equals(bannersCategoriesId, other.bannersCategoriesId) &&
        image == other.image &&
        terms == other.terms;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        validateDate,
        buttonText,
        url,
        description,
        status,
        storesId,
        createdAt,
        bannersCategoriesId,
        image,
        terms
      ]);
}

BannerStruct createBannerStruct({
  String? id,
  String? title,
  String? validateDate,
  String? buttonText,
  String? url,
  String? description,
  String? status,
  String? storesId,
  int? createdAt,
  ImageStruct? image,
  String? terms,
}) =>
    BannerStruct(
      id: id,
      title: title,
      validateDate: validateDate,
      buttonText: buttonText,
      url: url,
      description: description,
      status: status,
      storesId: storesId,
      createdAt: createdAt,
      image: image ?? ImageStruct(),
      terms: terms,
    );
