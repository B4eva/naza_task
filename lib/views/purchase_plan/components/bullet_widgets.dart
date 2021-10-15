import 'package:flutter/material.dart';

class MyBulletWidget extends StatelessWidget {
  const MyBulletWidget({Key? key, this.text, this.child}) : super(key: key);
  final String? text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: [
          child!,
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              text!,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      )
    ]);
  }
}

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
