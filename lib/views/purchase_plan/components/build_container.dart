import 'package:flutter/material.dart';
import 'package:naza_task/views/purchase_plan/components/bullet_widgets.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    Key? key,
    required this.text,
    required this.subText,
    required this.amount,
    required this.color,
    required this.color2,
  }) : super(key: key);

  final String? text;
  final String? subText;
  final String? amount;
  final Color? color;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color2),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                text!,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  ...List.generate(
                      2,
                      (index) => MyBulletWidget(
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5,
                                ),
                                MyBullet(),
                              ],
                            ),
                            text: subText,
                          ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: color,
                    ),
                    child: Text(
                      amount!,
                      style: const TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}

class BuildContainer2 extends StatelessWidget {
  const BuildContainer2({
    Key? key,
    required this.text,
    required this.subText,
    required this.amount,
    required this.color,
    required this.color2,
    required this.date,
  }) : super(key: key);

  final String? text;
  final String? subText;
  final String? amount;
  final Color? color;
  final Color? color2;
  final String? date;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color2),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                text!,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(date!),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  ...List.generate(
                      5,
                      (index) => MyBulletWidget(
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5,
                                ),
                                MyBullet(),
                              ],
                            ),
                            text: subText,
                          ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: color,
                    ),
                    child: Text(
                      amount!,
                      style: const TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
