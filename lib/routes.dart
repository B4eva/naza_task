import 'package:flutter/cupertino.dart';
import 'package:naza_task/views/Home/home.dart';
import 'package:naza_task/views/safe_space_details/safe_space_details.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => const Home(),
  SafeSpaceView.routeName: (context) => const SafeSpaceView(),
};
