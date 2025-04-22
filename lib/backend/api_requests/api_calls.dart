import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FlutterFlow + AWS S3 ApiFlow API Group Code

class FlutterFlowAWSS3ApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/574bc76ac61e4e758b29783e23c6b13e';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
  };
  static ListBucketsCall listBucketsCall = ListBucketsCall();
  static ListFilesInBucketCall listFilesInBucketCall = ListFilesInBucketCall();
  static UploadFileToBucketCall uploadFileToBucketCall =
      UploadFileToBucketCall();
  static CreateSignedLinkCall createSignedLinkCall = CreateSignedLinkCall();
  static FindBucketCall findBucketCall = FindBucketCall();
  static CreateBucketCall createBucketCall = CreateBucketCall();
}

class ListBucketsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Buckets',
      apiUrl: '${baseUrl}/buckets/list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
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

class ListFilesInBucketCall {
  Future<ApiCallResponse> call({
    String? bucket = '',
    String? prefix = '',
    String? token = '',
  }) async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Files in Bucket',
      apiUrl: '${baseUrl}/buckets/${bucket}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
      },
      params: {
        'prefix': prefix,
        'token': token,
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

class UploadFileToBucketCall {
  Future<ApiCallResponse> call({
    String? bucket = 'morestarts',
    String? name = 'aastring1',
    String? days = '',
    FFUploadedFile? file,
  }) async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Upload File to Bucket',
      apiUrl: '${baseUrl}/buckets/${bucket}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
      },
      params: {
        'name': name,
        'days': days,
        'file': file,
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

class CreateSignedLinkCall {
  Future<ApiCallResponse> call({
    String? bucket = '',
    String? name = '',
    String? days = '',
  }) async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create Signed Link',
      apiUrl: '${baseUrl}/buckets/${bucket}/files/${name}/share',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
      },
      params: {},
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

class FindBucketCall {
  Future<ApiCallResponse> call({
    String? bucket = '',
  }) async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Find Bucket',
      apiUrl: '${baseUrl}/buckets/find',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
      },
      params: {
        'bucket': bucket,
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

class CreateBucketCall {
  Future<ApiCallResponse> call({
    String? bucket = '',
  }) async {
    final baseUrl = FlutterFlowAWSS3ApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create Bucket',
      apiUrl: '${baseUrl}/buckets/create',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Bearer MTA2MmMzMjYyNGVhNjYzODliMTYzODI2YzlmMTdmNTk6NDFjNTIwNGNjODBlNTdmZGQ0MzA5MmMxMzcxYmI5OGQ=',
      },
      params: {},
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

/// End FlutterFlow + AWS S3 ApiFlow API Group Code

class BubbleSignInCall {
  static Future<ApiCallResponse> call({
    String? email = 'danielle@stanzyk.com',
    String? password = 'M0Re\$t@rt\$!',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Bubble Sign In',
      apiUrl: 'https://app.morestarts.io/api/1.1/wf/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class BubbleSignUpCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = 'M0Re\$t@rt\$!',
    String? confirmPassword = 'password',
    String? lastname = 'password',
    String? inviteCode = 'LJ123',
    String? firstname = 'DEFAULT',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Bubble Sign Up',
      apiUrl: 'https://app.morestarts.io/api/1.1/wf/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
        'confirm_password': confirmPassword,
        'firstname': firstname,
        'lastname': lastname,
        'invite_code': inviteCode,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class ProcessAppointmentCall {
  static Future<ApiCallResponse> call({
    String? script = '1721370173710x105747899271222860',
    String? url =
        'https://morestarts.s3.amazonaws.com/Temitope%20Ologundudu1712232288291x745931328660359300/2f0cb7df-a703-47f7-adcf-bf21d6830539_New%20Recording%2078.m4a',
    String? lead = '1727102792177x824457555653427200',
    String? token =
        'bus|1709192824803x937878865371988300|1726732544278x416868666671337300',
    String? userId = '1709192824803x937878865371988300',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'processAppointment',
      apiUrl:
          'https://app.morestarts.io/api/1.1/wf/processappointment?token={{token}}&user_id={{user_id}}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': url,
        'script': script,
        'lead': lead,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class CreateLeadCall {
  static Future<ApiCallResponse> call({
    String? email = 'temitope+10@naviu.tech',
    String? leadowner = '1743187387357x242256023542793300',
    String? name = 'rajjj',
    String? birthday = '',
    String? company = '1721169667586x361793506968740160',
    String? token =
        'bus|1709192824803x937878865371988300|1726732544278x416868666671337300',
    String? userId = '1714113003534x449472743562325400',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Create Lead',
      apiUrl:
          'https://app.morestarts.io/api/1.1/wf/createlead?token={{token}}&user_id={{user_id}}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'name': name,
        'company': company,
        'leadowner': leadowner,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class BubbleGetCurrentUserCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Bubble Get Current User',
      apiUrl:
          'https://app.morestarts.io/api/1.1/obj/user/${userId}?token=${token}',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {
        'user_id': userId,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response['First Name']''',
      ));
  static List<String>? leads(dynamic response) => (getJsonField(
        response,
        r'''$.response['My Leads']''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? companies(dynamic response) => (getJsonField(
        response,
        r'''$.response.Companies''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLeadsCall {
  static Future<ApiCallResponse> call({
    String? token =
        'bus|1709192824803x937878865371988300|1726207636318x950512478450675600',
    String? userId = '1709192824803x937878865371988300',
    String? constraints =
        '[{\"key\":\"_id\",\"constraint_type\":\"in\",\"value\":[\"1727174067853x957259122961547300\",\"1727250181323x570582397195649000\"]}]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Leads',
      apiUrl: 'https://app.morestarts.io/api/1.1/obj/Lead?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'user_id': userId,
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? leadNames(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].Name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? appointmentIDs(dynamic response) => getJsonField(
        response,
        r'''$.response.results[:].Appointments''',
        true,
      ) as List?;
  static List<String>? leadID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCompaniesCall {
  static Future<ApiCallResponse> call({
    String? token =
        'bus|1709192824803x937878865371988300|1726732544278x416868666671337300',
    String? userId = '1709192824803x937878865371988300',
    String? constraints =
        '[{\"key\":\"_id\",\"constraint_type\":\"in\",\"value\":[\"1721291947336x531856145681218560\",\"1723648848822x908240133917231700\"]}]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Companies',
      apiUrl:
          'https://app.morestarts.io/api/1.1/obj/Company?token={{token}}&user_id={{user_id}}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listofCompaniesJson(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  static List<String>? companyListNames(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].Name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? companyIDs(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? scriptsList(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[0]['Available Appointment Types (Scripts)']''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetScriptsCall {
  static Future<ApiCallResponse> call({
    String? token =
        'bus|1709192824803x937878865371988300|1726732544278x416868666671337300',
    String? userId = '1709192824803x937878865371988300',
    String? constraints =
        '[{\"key\":\"_id\",\"constraint_type\":\"in\",\"value\":[\"1727068630940x465654227271942140\",\"1727068284912x262097204373618700\"]}]',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Scripts',
      apiUrl:
          'https://app.morestarts.io/api/1.1/obj/Appointment%20Type?token={{token}}&user_id={{user_id}}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listofScriptsJson(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  static List<String>? scriptListNames(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].Name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? scriptIDs(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

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
