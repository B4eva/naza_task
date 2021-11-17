import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naza_task/views/safe_space_details/safe_space_details.dart';
import 'package:naza_task/views/start_conversation/start_conversation.dart';

import 'componenets/body.dart';

class UpdateMeet extends StatelessWidget {
  static const routeName = '/updateMeet';
  const UpdateMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('Updater Meet filter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 12,
            )),
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, SafeSpaceView.routeName);
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
