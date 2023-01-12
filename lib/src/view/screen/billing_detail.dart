import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_app_store/src/view/screen/profile_screen.dart';

class BilingDetail extends StatelessWidget {
  const BilingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
            child: Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const SizedBox(
                height: 200.0,
                child: ListTile(
                  title: Text(
                    'Total Billing',
                    textAlign: TextAlign.center,
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                  subtitle: Text('555 \$',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 75.0,
                          color: Colors.black)),
                ),
              ),
            )),
        Container(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          alignment: Alignment.center,
          child: const Text(
            'Billing Details:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
          child: Column(
            children: const [
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
              Text(
                '- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada, quam vitae dictum congue, augue ipsum dictum eros, vel feugiat augue nulla id nibh. ',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
        // Container(
        //   padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        //   alignment: Alignment.center,
        //   child: const Text(
        //     'Pay your bill',
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        //   ),
        // ),
        Container(
          alignment: Alignment.center,
          // width: 150,
          // height: 150,
          child: ButtonBar(alignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                  // color: Colors.green,
                  onPressed: () {
                    Get.to(() => const ProfileScreen());
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
                  Get.to(() => const ProfileScreen());
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
