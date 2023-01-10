import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
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
            padding: const EdgeInsets.only(top: 25.0),
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.card_membership),
              title: Text('Billing Details'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          // const Card(
          //   child: ListTile(
          //     leading: Icon(Icons.local_shipping),
          //     title: Text('Shipping'),
          //     trailing: Icon(Icons.arrow_forward_ios),
          //   ),
          // ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.gif_box),
              title: Text('order history'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('User Management'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('Informations'),
              trailing: Icon(Icons.arrow_forward_ios),
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
      ),
    );
  }
}
