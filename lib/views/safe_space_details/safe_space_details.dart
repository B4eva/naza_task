import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naza_task/views/Home/home.dart';
import 'package:naza_task/views/safe_space_details/components/body.dart';
import 'package:naza_task/views/views.dart';

class SafeSpaceView extends StatelessWidget {
  static String routeName = 'safeSpace_page';
  const SafeSpaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('SafeSpace Details',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            )),
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, SessionEnded.routeName);
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
