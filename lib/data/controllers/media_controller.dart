import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../models/media_model.dart';
import '../repository/api_image_repo.dart';

class MediaController extends GetxController with StateMixin<List<MediaElements>>  {
  final MediaApi _mediaApi = MediaApi();
  RxBool isLoading = true.obs;
  RxList<MediaElements> mediaList = <MediaElements>[].obs;
  RxString receivedToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjBiZmUxODE3ZmYzZjBkMmZjMmQwNGUiLCJpYXQiOjE3MTQ3MTkyMDMsImV4cCI6MTc4MzgzOTIwM30.HfsYDcVEzMsdi6pU24IzHzmGAxfDQ2NAJYIptOAu_9I".obs;

  @override
  void onInit() {
    super.onInit();
    fetchMediaData();
  }

  Future<void> fetchMediaData() async {
    try {
      List<MediaElements> mediaData = await _mediaApi.getMedia(receivedToken.value);
      isLoading.value = false;
      mediaList.assignAll(mediaData);
      print('Media Data Fetched Successfully: $mediaData');
    } catch (error) {
      isLoading.value = false;
      print('Error fetching media: $error');
    }
  }
}

