import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/view/screen/home_screen.dart';

class BilingDetail extends StatelessWidget {
  const BilingDetail({super.key});

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Billing Detail", style: h2Style),
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
            Container(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Card(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const SizedBox(
                    height: 200.0,
                    child: Center(
                      child: ListTile(
                        title: Text('\$ 12345',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60.0,
                                color: Colors.black)),
                      ),
                    ),
                  ),
                )),
            Container(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 30.0, right: 30.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Billing Details:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada, quam vitae dictum congue, augue ipsum dictum eros, vel feugiat augue nulla id nibh. ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada, quam vitae dictum congue, augue ipsum dictum eros, vel feugiat augue nulla id nibh. ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada, quam vitae dictum congue, augue ipsum dictum eros, vel feugiat augue nulla id nibh. ',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  // Text(
                  //   '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada, quam vitae dictum congue, augue ipsum dictum eros, vel feugiat augue nulla id nibh. ',
                  //   style: TextStyle(fontSize: 20.0),
                  // ),
                ],
              ).fadeAnimation(1.0),
            ),
            Container(
              alignment: Alignment.center,
              child: ButtonBar(alignment: MainAxisAlignment.center, children: [
                SizedBox(
                  width: 125,
                  height: 50,
                  child: ElevatedButton(
                      // color: Colors.green,
                      onPressed: () {
                        Get.to(() => const HomeScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: const Text('Pay')),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const HomeScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Cancel'),
                  ),
                ),
              ]),
            )
          ],
        ));
  }
}
