import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_color.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/view/screen/home_screen.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Order History", style: h2Style),
      actions: [
        IconButton(
          splashRadius: 20.0,
          onPressed: controller.clearCart,
          icon: const Icon(
            Icons.delete,
            color: AppColor.lightBlack,
          ),
        ),
      ],
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
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.local_shipping),
                      title: Text('Completed Order'),
                      subtitle:
                          Text('Standing desk 1 with 2 chair and 1 table'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.pending_actions_outlined),
                      title: Text('Processed Order'),
                      subtitle:
                          Text('Standing desk 1 with 2 chair and 1 table'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.close_rounded),
                      title: Text('Order Cancellation'),
                      subtitle:
                          Text('Standing desk 1 with 2 chair and 1 table'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
              ],
            ).fadeAnimation(1.0),
          ),
        ));
  }
}
