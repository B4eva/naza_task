import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double val = 1;
  double val2 = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MySlider(
            arg1: '1km',
            arg2: '70km',
            press: (double value) {
              setState(() {
                val = value;
              });
            },
            realvalue: val,
            arg3: 'Distance',
          ),
          MySlider(
            arg1: '18',
            arg2: '65+',
            press: (double value) {
              setState(() {
                val2 = value;
              });
            },
            realvalue: val2,
            arg3: 'Age',
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Expanded(
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 4
                      : 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  // childAspectRatio: (2 / 1),
                ),
                itemBuilder: (context, __) => GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          RoundedContainer(text: "Text"),
                        ],
                      ),
                    ))),
          )
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String text;
  const RoundedContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100]),
      child: Center(child: Text(text)),
    );
  }
}

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
            height: 10,
            child: Slider(
              value: realvalue!,
              onChanged: press!,
              min: 0,
              max: 68,
              activeColor: Colors.pink[300],
              inactiveColor: Colors.grey[200],
            )),
        // const SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                arg1!,
                style: const TextStyle(fontSize: 10),
              ),
              Text(arg2!, style: const TextStyle(fontSize: 10))
            ],
          ),
        ),
      ],
    );
  }
}
