import 'package:flutter/material.dart';
import 'package:naza_task/views/update_meet/componenets/my_slider.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double val = 1;
  double val2 = 1;
  int boxValue = 0;
  int boxValue2 = 0;
  int boxValue3 = 0;
  final List<String> items = <String>[
    "Single moms",
    "married moms",
    "Divorced moms",
    "Widowed moms",
    "Anyone",
  ];
  final List<String> items2 = <String>[
    "Staying at home",
    "Working",
    "Schooling",
    "Any",
  ];
  final List<String> items3 = <String>[
    "Pregnant",
    "Nursing",
    "Raising kids",
    "Tring to concieve",
    "Any"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          const Divider(),
          const SizedBox(
            height: 20,
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
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const HeaderRow(
            text1: 'I want to meet',
            text2: 'select one choice',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 5,
              runSpacing: 10,
              children: List.generate(
                  items.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            boxValue = index;
                          });
                        },
                        child: RoundedContainer(
                            boxValue: boxValue, items: items, index: index),
                      )),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          const HeaderRow(
            text1: 'Who are',
            text2: 'select one choice',
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 5,
              runSpacing: 10,
              children: List.generate(
                  items2.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            boxValue2 = index;
                          });
                        },
                        child: RoundedContainer(
                            boxValue: boxValue2, items: items2, index: index),
                      )),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const HeaderRow(
            text1: 'And are',
            text2: 'select one choice',
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 5,
              runSpacing: 10,
              children: List.generate(
                  items3.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            boxValue3 = index;
                          });
                        },
                        child: RoundedContainer(
                            boxValue: boxValue3, items: items3, index: index),
                      )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Update Filter',
                style: TextStyle(
                    color: Colors.pink[200],
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {Key? key,
      required this.boxValue,
      required this.items,
      required this.index})
      : super(key: key);

  final int boxValue;
  final List<String> items;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
          color: boxValue == index ? Colors.pink[100] : Colors.grey[300],
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          )),
      child: Center(
          child: Text(
        items[index],
        style: const TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
      )),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text1,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(text2,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}
