import 'package:agora_video_call/pages/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (_) => Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Spacer(),
                    _getAppId(_),
                    const SizedBox(height: 20),
                    _getChannelName(_),
                    const Spacer(),
                    _getButton(_),
                  ],
                ),
              )),
    );
  }

  CupertinoButton _getButton(HomeController _) {
    return CupertinoButton.filled(
        child: const Text('Start'),
        onPressed: () {
          _.navigateToConversationPage();
        });
  }

  TextField _getChannelName(HomeController _) => TextField(
        controller: _.channelNameController,
        decoration: const InputDecoration(
          hintText: "channelName (required)",
        ),
      );

  TextField _getAppId(HomeController _) {
    return TextField(
      controller: _.appIdController,
      decoration: const InputDecoration(
        hintText: "appId (required)",
      ),
    );
  }
}
