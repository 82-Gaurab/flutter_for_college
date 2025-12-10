import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Image.network(
            //   "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2023%2F03%2F14%2F22%2F20%2Frelationship-7853278_640.jpg&f=1&nofb=1&ipt=b6a757a8e67848fe731dc3ec4ac07607677e100c54e9d403a8ed2c9a831d0966.jpg",
            // ),
            Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F1302655.jpg",
            ),

            Positioned(
              top: 5,
              right: 10,
              child: Icon(Icons.edit, color: Colors.blue, size: 40),
            ),
            Positioned(
              bottom: 5,
              left: 10,
              child: Icon(Icons.thumb_up, color: Colors.blue, size: 40),
            ),
            Positioned(
              bottom: 5,
              left: 70,
              child: Icon(Icons.message, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
