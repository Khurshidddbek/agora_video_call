import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configs/root_binding.dart';

Future main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior(),
      defaultTransition: Transition.fade,
      initialBinding: RootBinding(),
      // home: getHomePage(),
    ),
  );
}
