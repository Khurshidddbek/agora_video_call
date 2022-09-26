import 'package:agora_uikit/agora_uikit.dart';
import 'package:get/get.dart';

class ConversationController extends GetxController {
  // Instantiate the client
  late AgoraClient client;

  void initAgoraClient(String appId, String channelName) {
    client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: appId,
        channelName: channelName,
      ),
    );
  }

  void initAgora() async {
    await client.initialize();
  }
}
