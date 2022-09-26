import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conversation/conversation.dart';

class HomeController extends GetxController {
  var appIdController = TextEditingController();
  var channelNameController = TextEditingController();

  void navigateToConversationPage() {
    Get.to(() => const ConversationPage());
  }
}
