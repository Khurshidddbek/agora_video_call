import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_video_call/pages/home/home_controller.dart';
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
      Get.snackbar("Error", e.toString(),
          animationDuration: const Duration(minutes: 1));
    }
  }

  void initAgoraClient() {
    var homeController = Get.find<HomeController>();

    client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: homeController.appIdController.text,
        channelName: homeController.channelNameController.text,
        rtmChannelName: homeController.rtmChannelNameController.text.isEmpty
            ? null
            : homeController.rtmChannelNameController.text,
        username: homeController.usernameController.text.isEmpty
            ? null
            : homeController.usernameController.text,
        tokenUrl: homeController.tokenUrlController.text.isEmpty
            ? null
            : homeController.tokenUrlController.text,
        tempToken: homeController.tempTokenController.text.isEmpty
            ? null
            : homeController.tempTokenController.text,
        tempRtmToken: homeController.tempRtmTokenController.text.isEmpty
            ? null
            : homeController.tempRtmTokenController.text,
        rtmEnabled:
            homeController.rtmEnabledController.text == "false" ? false : true,
      ),
    );
  }

  Future<void> initAgora() async {
    await client.initialize();
  }
}
