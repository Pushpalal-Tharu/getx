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
      title: "Buttom Sheet",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Buttom Sheet"),
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
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny_outlined,
                        ),
                        title: Text(
                          "Light Theme",
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny,
                        ),
                        title: Text(
                          "Dark Theme",
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ),
                barrierColor: Colors.greenAccent.shade100,
                backgroundColor: Colors.pinkAccent,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                enableDrag: false,
              );
            },
            child: Text("Buttom Sheet"),
          ),
        ],
      )),
    );
  }
}
