import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserLoginCall {
  static Future<ApiCallResponse> call({
    String? empId = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "emp_id": "${empId}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Login',
      apiUrl: 'https://api.ppz.com/api/v1/employee/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PermohonanCutiCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? bearertoken = '',
    String? kodCuti = '',
    String? bilHari = '',
    String? tkhDari = '',
    String? tkhHingga = '',
    String? sebabCuti = '',
    FFUploadedFile? lampiran,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Permohonan Cuti',
      apiUrl: 'https://api.ppz.com/api/v1/employee/${id}/leave/apply',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearertoken}',
      },
      params: {
        'kod_cuti': kodCuti,
        'bil_hari': bilHari,
        'tkh_dari': tkhDari,
        'tkh_hingga': tkhHingga,
        'sebab_cuti': sebabCuti,
        'lampiran': lampiran,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SenaraiCutiCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? bearertoken = '',
    String? year = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Senarai Cuti',
      apiUrl: 'https://api.ppz.com/api/v1/employee/${id}/leave',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearertoken}',
      },
      params: {
        'year': year,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MaklumatCutiCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? bearertoken = '',
    String? idCuti = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Maklumat Cuti',
      apiUrl:
          'https://api.ppz.com/api/v1/employee/${id}/leave/${idCuti}/show',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearertoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserCutiSummaryCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? bearertoken = '',
    String? year = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Cuti Summary',
      apiUrl:
          'https://api.ppz.com/api/v1/employee/${id}/leave-summary',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearertoken}',
      },
      params: {
        'year': year,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
