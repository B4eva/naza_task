import 'package:flutter/material.dart';

import 'components/body.dart';

class StartConversation extends StatelessWidget {
  static const routeName = '/startConversation';
  const StartConversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: const Body(),
    );
  }
}
