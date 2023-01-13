import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/view/screen/billing_detail.dart';
import 'package:office_app_store/src/view/screen/information.dart';
import 'package:office_app_store/src/view/screen/order_histori.dart';
import 'package:office_app_store/src/view/screen/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: h2Style),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      minRadius: 45.0,
                      child:
                          Icon(Icons.person, color: Colors.white, size: 70.0),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'octtavia \n @vviia',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: const ListTile(
                            title: Text(
                              '500 \$',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Saldo',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: const ListTile(
                            title: Text(
                              '3 Available',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Coupon',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: const ListTile(
                            title: Text(
                              '100',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Point',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(const SettingScreen());
                      },
                      leading: const Icon(Icons.settings),
                      title: const Text('Setting'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(const BilingDetail());
                      },
                      leading: const Icon(Icons.card_membership),
                      title: const Text('Billing Details'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(const OrderHistory());
                      },
                      leading: const Icon(Icons.gif_box),
                      title: const Text('order history'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  // const Card(
                  //   child: ListTile(
                  //     leading: Icon(Icons.person),
                  //     title: Text('User Management'),
                  //     trailing: Icon(Icons.arrow_forward_ios),
                  //   ),
                  // ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(const InformationScreen());
                      },
                      leading: const Icon(Icons.info_rounded),
                      title: const Text('Informations'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              )).fadeAnimation(1.0),
        ],
      ),
    );
  }
}
