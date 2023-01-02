import 'package:flutter/material.dart';
import '../../../core/app_asset.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(AppAsset.profilePic),

          //add profile pic from internet
          const Icon(Icons.person, size: 100, color: Colors.blue),

          // Image(image: )
          const Text(
            "Hello Via!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAsset.githubPic,
                width: 60,
              ),
              const SizedBox(width: 10),
              const Text(
                "https://github.com/vviia",
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
