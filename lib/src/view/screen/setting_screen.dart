import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_app_store/src/view/screen/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      labelText: 'username',
                      hintText: '@vviia',
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
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
                                Get.to(() => const ProfileScreen());
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
                                Get.to(() => const ProfileScreen());
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
