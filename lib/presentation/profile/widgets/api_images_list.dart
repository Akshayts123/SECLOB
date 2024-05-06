import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:seclob/data/apiClient/assets_url.dart';
import 'package:shimmer/shimmer.dart';
import '../../../data/controllers/media_controller.dart';
import '../../../data/models/media_model.dart';
import '../../../data/repository/api_image_repo.dart';

class MediaPage extends StatelessWidget {
  final MediaApi mediaApi = MediaApi();
  final controller = Get.put(MediaController());
  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        if (controller.isLoading.value) {
          return _buildShimmerLoading();
        } else if (controller.mediaList.isEmpty) {
          return Center(
            child: Text('No Data'),
          );
        } else {
          return GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 3 / 4,
            ),
            itemCount: controller.mediaList.length,
            itemBuilder: (context, index) {
              MediaElements media = controller.mediaList[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        media.filePath,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black.withOpacity(0.3),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(assets_url+"wishlist.svg"),
                                  SizedBox(height: 3,),
                                  Text(
                                    media.likeCount.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20), // Adjust the spacing between columns
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(assets_url+"message.svg"),
                                  SizedBox(height: 3,),
                                  Text(
                                    media.commentCount.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
Widget _buildShimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade200,
    child: GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 3 / 4,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        );
      },
    ),
  );
}