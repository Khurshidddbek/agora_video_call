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
          builder: (_) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      _getAppId(_),
                      const SizedBox(height: 20),
                      _getChannelName(_),
                      const SizedBox(height: 20),
                      _getRtmChannelName(_),
                      const SizedBox(height: 20),
                      _getRtmUid(_),
                      const SizedBox(height: 20),
                      _getusername(_),
                      const SizedBox(height: 20),
                      _getTokenUrl(_),
                      const SizedBox(height: 20),
                      _getTempToken(_),
                      const SizedBox(height: 20),
                      _getTempRtmToken(_),
                      const SizedBox(height: 20),
                      _getRtmEnabled(_),
                      const SizedBox(height: 20),
                      _getUid(_),
                      const SizedBox(height: 20),
                      _getButton(_),
                    ],
                  ),
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

  TextField _getRtmChannelName(HomeController _) => TextField(
        controller: _.rtmChannelNameController,
        decoration: const InputDecoration(
          hintText: "rtmChannelName",
        ),
      );

  TextField _getUid(HomeController _) => TextField(
        controller: _.uidController,
        decoration: const InputDecoration(
          hintText: "uid (int)",
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

  TextField _getRtmUid(HomeController _) => TextField(
        controller: _.uidController,
        decoration: const InputDecoration(
          hintText: "rtmUid",
        ),
      );

  TextField _getusername(HomeController _) => TextField(
        controller: _.usernameController,
        decoration: const InputDecoration(
          hintText: "username",
        ),
      );

  TextField _getTokenUrl(HomeController _) => TextField(
        controller: _.tokenUrlController,
        decoration: const InputDecoration(
          hintText: "tokenUrl",
        ),
      );

  TextField _getTempToken(HomeController _) => TextField(
        controller: _.tempTokenController,
        decoration: const InputDecoration(
          hintText: "tempToken",
        ),
      );

  TextField _getTempRtmToken(HomeController _) => TextField(
        controller: _.tempRtmTokenController,
        decoration: const InputDecoration(
          hintText: "tempRtmToken",
        ),
      );

  TextField _getRtmEnabled(HomeController _) => TextField(
        controller: _.rtmEnabledController,
        decoration: const InputDecoration(
          hintText: "rtmEnabled (true or false)",
        ),
      );
}
