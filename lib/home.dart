import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Next Screen",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Get.back();
                      // Send data to previous screen must use result as name
                      Get.back(
                        result: "This is from Home Screen",
                      );
                    },
                    child: Text(
                      "Back to Main",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Text(
                  //   "${Get.arguments}",
                  //   style: TextStyle(
                  //     color: Colors.green,
                  //     fontSize: 20,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
