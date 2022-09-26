import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'conversation_controller.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ConversationController>(
        init: ConversationController(),
        builder: (_) => Stack(
          children: [
            AgoraVideoViewer(client: _.client),
            AgoraVideoButtons(client: _.client),
          ],
        ),
      ),
    );
  }
}
