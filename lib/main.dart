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
      title: 'Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Snackbar'),
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
              Get.snackbar(
                "Snackbar Title", "Elevated button is pressed",
                snackPosition: SnackPosition.BOTTOM,
                // titleText: Text("snackbar Title"),
                // messageText: Text("Elevated button is pressed"),
                colorText: Colors.blue,
                backgroundColor: Colors.white,
                // borderRadius: 30,
                margin: EdgeInsets.all(10),
                // maxWidth: 100,
                // animationDuration: Duration(milliseconds: 3000),
                backgroundGradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.purple,
                  ],
                ),
                // borderColor: Colors.deepOrange,
                // borderWidth: 4,
                // boxShadows: [
                //   BoxShadow(
                //     color: Colors.yellow,
                //     offset: Offset(30, 50),
                //     spreadRadius: 20,
                //     blurRadius: 8,
                //   ),
                // ],
                isDismissible: true,
                dismissDirection: DismissDirection.horizontal,
                // forwardAnimationCurve: Curves.bounceInOut,
                // duration: Duration(milliseconds: 8000),
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                shouldIconPulse: false,
                // leftBarIndicatorColor: Colors.white,
                mainButton: TextButton(
                  onPressed: () {},
                  child: Text("Retry"),
                ),
                onTap: (snack) {
                  print("Snackbar Clicked");
                },
                overlayBlur: 5,
                overlayColor: Colors.grey,
                padding: EdgeInsets.all(20),
                showProgressIndicator: true,
              );
            },
            child: Text("Show Snackbar"),
          ),
        ],
      )),
    );
  }
}
