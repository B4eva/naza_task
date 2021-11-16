import 'package:flutter/cupertino.dart';
import 'package:naza_task/views/Home/home.dart';
import 'package:naza_task/views/purchase_plan/purchase_plan.dart';
import 'package:naza_task/views/safe_space_details/safe_space_details.dart';
import 'package:naza_task/views/start_conversation/start_conversation.dart';
import 'package:naza_task/views/views.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => const Home(),
  SafeSpaceView.routeName: (context) => const SafeSpaceView(),
  SessionEnded.routeName: (context) => const SessionEnded(),
  PurchasePlanView.routeName: (context) => const PurchasePlanView(),
  StartConversation.routeName: (context) => const StartConversation()
};
