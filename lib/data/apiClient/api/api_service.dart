import 'package:dio/dio.dart';
import '../service/api_service.dart';

class UserApi {
  final ApiService _apiService = ApiService();


  Future<Response> getUsers({required String endpoint, required String authToken}) async {
    final headers = {'Accept': 'application/json', 'Connection': 'keep-alive','Authorization': 'Bearer $authToken'}; // Adjust this based on your API requirements
    try {
      final Response response = await _apiService.get(
        endpoint,
        options: Options(headers: headers),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
  Future<Response> post({required String endpoint, Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.post(
        endpoint,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }


  Future<Response> putUser(String id, {required String endpoint,Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.put(
        '${endpoint}/$id',
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> deleteUser(String id,{required String endpoint}) async {
    try {
      final Response response = await _apiService.delete(
        '${endpoint}/$id',
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
