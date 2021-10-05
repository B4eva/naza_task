import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naza_task/views/Home/components/body.dart';

class Home extends StatelessWidget {
  static String routeName = '/home_page';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
          ),
        ),
        body: const Body());
  }
}
