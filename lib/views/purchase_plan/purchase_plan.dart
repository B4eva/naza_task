import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';

class PurchasePlanView extends StatelessWidget {
  static String routeName = 'purchasePlan_page';
  const PurchasePlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 2,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('Purchase a plan',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            )),
        leading: IconButton(
          onPressed: () {
            // Navigator.popAndPushNamed(context, SessionEnded.routeName);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
