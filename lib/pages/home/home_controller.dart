import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conversation/conversation.dart';

class HomeController extends GetxController {
  var appIdController = TextEditingController();
  var channelNameController = TextEditingController();
  var rtmChannelNameController = TextEditingController();
  var uidController = TextEditingController();

  var rtmUidController = TextEditingController();
  var usernameController = TextEditingController();
  var tokenUrlController = TextEditingController();
  var tempTokenController = TextEditingController();
  var tempRtmTokenController = TextEditingController();
  var rtmEnabledController = TextEditingController();

  void navigateToConversationPage() {
    Get.to(() => const ConversationPage());
  }
}
