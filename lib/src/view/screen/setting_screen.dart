import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/view/screen/home_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Setting", style: h2Style),
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
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    minRadius: 45.0,
                    child: Icon(Icons.person, color: Colors.white, size: 70.0),
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
            ]),
          ),
          Container(
              // add text form
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              hintText: 'octtavviia',
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10.0),
                              // ),
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              hintText: '@vviia',
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10.0),
                              // ),
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                              hintText: '6289529122055',
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Street',
                              hintText: 'Jl.Kaliurang KM 14,5',
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'City',
                              hintText: 'Kota Yogyakarta',
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Province',
                              hintText: 'Yogyakarta',
                            ),
                          )),
                          Form(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Country',
                              hintText: 'Indonesia',
                            ),
                          )),
                        ],
                      )).fadeAnimation(1.0),
                  Container(
                    padding: const EdgeInsets.only(top: 30.0),
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // alignment: Alignment.center,
                    alignment: Alignment.center,
                    child: ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 125,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const HomeScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: const Text('Save'),
                            ),
                          ),
                          SizedBox(
                            width: 125,
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
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
