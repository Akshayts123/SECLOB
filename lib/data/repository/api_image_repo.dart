import 'package:dio/dio.dart';
import '../../core/network/constants.dart';
import '../models/media_model.dart';

class MediaApi {
  final Dio _dio = Dio();

  Future<List<MediaElements>> getMedia(String authToken) async {
    try {
      Response response = await _dio.get(
        AppUrl.baseUrl+AppUrl.media,
        options: Options(
          headers: {
            'Authorization': 'Bearer $authToken',
          },
        ),
      );
      if (response.statusCode == 200) {
        List<dynamic> mediaData = response.data["media"];
        List<MediaElements> mediaList = mediaData
            .map((json) => MediaElements.fromJson(json))
            .toList();
        return mediaList;
      } else {
        throw Exception('Failed to load media');
      }
    } catch (error) {
      throw error;
    }
  }
}


