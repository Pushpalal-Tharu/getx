import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Show Dialog",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Show Dialog"),
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
            onPressed: () {
              Get.defaultDialog(
                title: "Dialog Title",
                titleStyle: TextStyle(
                  fontSize: 25,
                ),
                middleText: "This is middle text",
                middleTextStyle: TextStyle(
                  fontSize: 20,
                ),
                backgroundColor: Colors.grey,
                radius: 80,

                // To customize the middle text
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Text("Data Loading"),
                    ),
                  ],
                ),

                // Default cancel and confirm action
                textCancel: "Calcel",
                cancelTextColor: Colors.white,
                textConfirm: "Comfirm",
                confirmTextColor: Colors.white,
                onCancel: () {
                  Get.back();
                },
                onConfirm: () {},
                // Color for default cancel and confirm button
                buttonColor: Colors.green,
                confirm: Text(
                  "Confirms",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                cancel: Text(
                  "Cancels",
                  style: TextStyle(color: Colors.white),
                ),
                // actions: [
                //   ElevatedButton(
                //     // onPressed: Get.back(),
                //     onPressed: () {},
                //     child: Text("Action-1"),
                //   ),
                //   ElevatedButton(
                //     onPressed: () {},
                //     child: Text("Action-2"),
                //   )
                // ],
                barrierDismissible: false,
              );
            },
            child: Text("Show Dialog"),
          ),
        ],
      )),
    );
  }
}
