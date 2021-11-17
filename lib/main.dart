import 'package:flutter/material.dart';
import 'package:naza_task/routes.dart';
import 'package:naza_task/views/start_conversation/start_conversation.dart';
import 'package:naza_task/views/update_meet/update_meet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNGi8',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: UpdateMeet.routeName,
      routes: routes,
    );
  }
}
