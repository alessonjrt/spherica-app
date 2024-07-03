import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default/auth';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static MeCall meCall = MeCall();
  static SignUpCall signUpCall = SignUpCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Me',
      apiUrl: '${baseUrl}/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? phone = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email": "${email}",
  "phone": "${phone}",
  "password": "${password}",
  "type": "client"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUp',
      apiUrl: '${baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth Group Code

/// Start User Group Code

class UserGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetUserCall getUserCall = GetUserCall();
  static PatchUserCall patchUserCall = PatchUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get User',
      apiUrl: '${baseUrl}/user/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? name = '',
    String? cpf = '',
    String? phone = '',
    String? phoneWpp = '',
    String? email = '',
    FFUploadedFile? image,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Patch User',
      apiUrl: '${baseUrl}/user/${userId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'users_id': userId,
        'name': name,
        'cpf': cpf,
        'phone': phone,
        'phone_wpp': phoneWpp,
        'email': email,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? usersId = '',
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User',
      apiUrl: '${baseUrl}/user/${usersId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'users_id': usersId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End User Group Code

/// Start Client Group Code

class ClientGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static ChangeClientRegisterInfoCall changeClientRegisterInfoCall =
      ChangeClientRegisterInfoCall();
}

class ChangeClientRegisterInfoCall {
  Future<ApiCallResponse> call({
    String? clientId = '',
    String? usersId = '',
    String? diagnostic = '',
    String? lensesOrGlasses = '',
    String? typeLenses = '',
    String? brandLenses = '',
    String? token = '',
  }) async {
    final baseUrl = ClientGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "client_id": "${clientId}",
  "users_id": "${usersId}",
  "diagnostic": "${diagnostic}",
  "lenses_or_glasses": "${lensesOrGlasses}",
  "type_lenses": "${typeLenses}",
  "brand_lenses": "${brandLenses}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Client Register Info',
      apiUrl: '${baseUrl}/client/${clientId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Client Group Code

/// Start Banners Group Code

class BannersGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetBannersCall getBannersCall = GetBannersCall();
}

class GetBannersCall {
  Future<ApiCallResponse> call({
    String? clientId = '',
    String? token = '',
  }) async {
    final baseUrl = BannersGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Banners',
      apiUrl: '${baseUrl}/banners',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'client_id': clientId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Banners Group Code

/// Start Feedbacks Group Code

class FeedbacksGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetFeedbacksCall getFeedbacksCall = GetFeedbacksCall();
  static NewFeedbacksCall newFeedbacksCall = NewFeedbacksCall();
  static GetFeedbackByIdCall getFeedbackByIdCall = GetFeedbackByIdCall();
  static PatchFeedbackCall patchFeedbackCall = PatchFeedbackCall();
}

class GetFeedbacksCall {
  Future<ApiCallResponse> call({
    String? clientsId = '',
    String? token = '',
  }) async {
    final baseUrl = FeedbacksGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Feedbacks',
      apiUrl: '${baseUrl}/feedbacks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'clients_id': clientsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewFeedbacksCall {
  Future<ApiCallResponse> call({
    String? subject = '',
    String? message = '',
    String? answer = '',
    String? clientsId = '',
    String? storesId = '',
    bool? isEnabled = true,
    String? status = 'progress',
    String? token = '',
  }) async {
    final baseUrl = FeedbacksGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "subject": "${subject}",
  "message": "${message}",
  "answer": "${answer}",
  "status": "${status}",
  "isEnabled": "${isEnabled}",
  "clients_id": "${clientsId}",
  "stores_id": "${storesId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'New Feedbacks',
      apiUrl: '${baseUrl}/feedbacks',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFeedbackByIdCall {
  Future<ApiCallResponse> call({
    String? feedbacksId = '',
    String? token = '',
  }) async {
    final baseUrl = FeedbacksGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Feedback By Id',
      apiUrl: '${baseUrl}/feedbacks/${feedbacksId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchFeedbackCall {
  Future<ApiCallResponse> call({
    String? feedbacksId = '',
    String? message = '',
    String? answer = '',
    bool? isEnabled,
    String? subject = '',
    String? clientsId = '',
    bool? read = false,
    String? token = '',
  }) async {
    final baseUrl = FeedbacksGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "feedbacks_id": "${feedbacksId}",
  "subject": "${subject}",
  "message": "${message}",
  "answer": "${answer}",
  "status": "",
  "read": "${read}",
  "isEnabled": "${isEnabled}",
  "clients_id": "${clientsId}",
  "stores_id": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Patch Feedback',
      apiUrl: '${baseUrl}/feedbacks/${feedbacksId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Feedbacks Group Code

/// Start Benefits Group Code

class BenefitsGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetBenefitsCall getBenefitsCall = GetBenefitsCall();
  static GetBenefitCall getBenefitCall = GetBenefitCall();
}

class GetBenefitsCall {
  Future<ApiCallResponse> call({
    String? clientsId = '',
    String? token = '',
  }) async {
    final baseUrl = BenefitsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Benefits',
      apiUrl: '${baseUrl}/benefits',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'clients_id': clientsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBenefitCall {
  Future<ApiCallResponse> call({
    String? benefitsId = '',
    String? token = '',
  }) async {
    final baseUrl = BenefitsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Benefit',
      apiUrl: '${baseUrl}/benefits/${benefitsId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Benefits Group Code

/// Start Nps Group Code

class NpsGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetNpsCall getNpsCall = GetNpsCall();
  static ChangeNpsVariationsCall changeNpsVariationsCall =
      ChangeNpsVariationsCall();
  static ChangeNpsNoteCall changeNpsNoteCall = ChangeNpsNoteCall();
}

class GetNpsCall {
  Future<ApiCallResponse> call({
    String? clientsId = '',
    String? storesId = '',
    String? token = '',
  }) async {
    final baseUrl = NpsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Nps',
      apiUrl: '${baseUrl}/nps',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'clients_id': clientsId,
        'stores_id': storesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeNpsVariationsCall {
  Future<ApiCallResponse> call({
    String? npsVariationId = '',
    String? title = '',
    String? response = '',
    String? description = '',
    String? type = '',
    String? token = '',
  }) async {
    final baseUrl = NpsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "title": "${title}",
  "description": "${description}",
  "response": "${response}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Nps Variations',
      apiUrl: '${baseUrl}/nps_variations/${npsVariationId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeNpsNoteCall {
  Future<ApiCallResponse> call({
    String? npsId = '',
    String? title = '',
    String? question = '',
    int? note,
    String? description = '',
    String? clientsId = '',
    String? storesId = '',
    String? message = '',
    String? type = '',
    String? secondQuestion = '',
    String? responseType = '',
    String? token = '',
  }) async {
    final baseUrl = NpsGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "title": "${title}",
  "question": "${question}",
  "note": ${note},
  "description": "${description}",
  "clients_id": "${clientsId}",
  "stores_id": "${storesId}",
  "message": "${message}",
  "type": "${type}",
  "response_type": "${responseType}",
  "second_question": "${secondQuestion}",
  "nps_variations_id": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Nps Note',
      apiUrl: '${baseUrl}/nps/${npsId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Nps Group Code

/// Start Profiles Group Code

class ProfilesGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetProfilesCall getProfilesCall = GetProfilesCall();
  static CreateProfileCall createProfileCall = CreateProfileCall();
  static GetProfileByIdCall getProfileByIdCall = GetProfileByIdCall();
  static PatchProfileCall patchProfileCall = PatchProfileCall();
}

class GetProfilesCall {
  Future<ApiCallResponse> call({
    String? clientsId = '',
    String? token = '',
  }) async {
    final baseUrl = ProfilesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profiles',
      apiUrl: '${baseUrl}/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'clients_id': clientsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProfileCall {
  Future<ApiCallResponse> call({
    String? clientsId = '',
    String? name = '',
    String? token = '',
  }) async {
    final baseUrl = ProfilesGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "clients_id": "${clientsId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Profile',
      apiUrl: '${baseUrl}/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileByIdCall {
  Future<ApiCallResponse> call({
    String? profileId = '',
    String? token = '',
  }) async {
    final baseUrl = ProfilesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile By Id',
      apiUrl: '${baseUrl}/profile/${profileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchProfileCall {
  Future<ApiCallResponse> call({
    String? profileId = '',
    String? name = '',
    String? clientsId = '',
    String? token = '',
  }) async {
    final baseUrl = ProfilesGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "profile_id": "${profileId}",
  "name": "${name}",
  "clients_id": "${clientsId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Patch Profile',
      apiUrl: '${baseUrl}/profile/${profileId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Profiles Group Code

/// Start Revenue Group Code

class RevenueGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:default/';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetRevenuesCall getRevenuesCall = GetRevenuesCall();
  static CreateRevenueCall createRevenueCall = CreateRevenueCall();
  static GetRevenueByIdCall getRevenueByIdCall = GetRevenueByIdCall();
  static PatchRevenueCall patchRevenueCall = PatchRevenueCall();
  static DeleteRevenueCall deleteRevenueCall = DeleteRevenueCall();
}

class GetRevenuesCall {
  Future<ApiCallResponse> call({
    String? profilesId = '',
    String? token = '',
  }) async {
    final baseUrl = RevenueGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Revenues',
      apiUrl: '${baseUrl}/revenue',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'profiles_id': profilesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRevenueCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? profilesId = '',
    String? description = '',
    FFUploadedFile? image,
    String? token = '',
  }) async {
    final baseUrl = RevenueGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Create Revenue',
      apiUrl: '${baseUrl}/revenue',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'image': image,
        'title': title,
        'description': description,
        'profiles_id': profilesId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRevenueByIdCall {
  Future<ApiCallResponse> call({
    String? revenueId = '',
    String? token = '',
  }) async {
    final baseUrl = RevenueGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Revenue By Id',
      apiUrl: '${baseUrl}revenue/${revenueId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PatchRevenueCall {
  Future<ApiCallResponse> call({
    String? revenueId = '',
    String? profilesId = '',
    String? description = '',
    FFUploadedFile? image,
    String? title = '',
    String? token = '',
  }) async {
    final baseUrl = RevenueGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Patch Revenue',
      apiUrl: '${baseUrl}/revenue/${revenueId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'revenue_id': revenueId,
        'title': title,
        'profiles_id': profilesId,
        'description': description,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRevenueCall {
  Future<ApiCallResponse> call({
    String? revenueId = '',
    String? token = '',
  }) async {
    final baseUrl = RevenueGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Revenue',
      apiUrl: '${baseUrl}revenue/${revenueId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Revenue Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
