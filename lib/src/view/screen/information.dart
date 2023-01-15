import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/view/screen/home_screen.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Information", style: h2Style),
      leading: IconButton(
        icon: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        onPressed: () {
          Get.offAll(() => const HomeScreen());
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: ListView(
          children: [
            // Container(
            //   padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            //   child: const Text(
            //     'INFORMATION',
            //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: const [
                    Text(
                        '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.justify),
                    SizedBox(height: 20),
                    Text(
                        '2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.justify),
                    SizedBox(height: 20),
                    Text(
                        '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.justify),
                  ],
                )).fadeAnimation(1.0),
          ],
        ));
  }
}
