import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_video_call/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConversationController extends GetxController {
  // Instantiate the client
  late AgoraClient client;

  @override
  void onInit() async {
    super.onInit();

    try {
      initAgoraClient();
      await initAgora();
    }

    // #error
    catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
  }

  void initAgoraClient() {
    var homeController = Get.find<HomeController>();

    client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: homeController.appIdController.text,
        channelName: homeController.channelNameController.text,
        rtmChannelName: homeController.rtmChannelNameController.text,
        uid: int.parse(homeController.uidController.text),
        rtmUid: homeController.rtmUidController.text,
        username: homeController.usernameController.text,
        tokenUrl: homeController.tokenUrlController.text,
        tempToken: homeController.tempTokenController.text,
        tempRtmToken: homeController.tempRtmTokenController.text,
        rtmEnabled:
            homeController.rtmEnabledController.text == "true" ? true : false,
      ),
    );
  }

  Future<void> initAgora() async {
    await client.initialize();
  }
}
