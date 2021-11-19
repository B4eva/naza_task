import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider(
      {Key? key,
      required this.press,
      required this.realvalue,
      required this.arg1,
      required this.arg2,
      required this.arg3})
      : super(key: key); // inactiveColor: Colors.grey,

  final Function(double x)? press;
  final String? arg1, arg2, arg3;
  final double? realvalue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            const SizedBox(
              width: 30,
            ),
            Text(
              arg3!,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 15,
            child: Slider(
              value: realvalue!,
              onChanged: press!,
              min: 0,
              max: 68,
              activeColor: Colors.pink[300],
              inactiveColor: Colors.grey[300],
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                arg1!,
                style: const TextStyle(fontSize: 10),
              ),
              Text(arg2!, style: const TextStyle(fontSize: 10)),
            ],
          ),
        ),
      ],
    );
  }
}
