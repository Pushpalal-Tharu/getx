import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Navigation"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              // Get.to(
              //   Home(),
              //   // To make the screen full dialog
              //   fullscreenDialog: true,
              //   // To provide animations
              //   transition: Transition.cupertino,
              //   // Duration for transition animation
              //   duration: Duration(
              //     milliseconds: 1000,
              //   ),
              //   // Curve Animation
              //   curve: Curves.bounceInOut,
              // );

              // Go to home screen but no option to return to previous screen
              // Get.off(Home());
              // Go to home screen and cancel all previous screens/routes
              // Get.offAll(Home());
              // Go to the next Screen with some data
              // Get.to(Home(), arguments: "Data from Main");
              //
              //
              //
              var data = await Get.to(Home());
              print(
                "The Received data is $data",
              );
            },
            child: Text(
              "Go to Home",
            ),
          ),
        ],
      )),
    );
  }
}
