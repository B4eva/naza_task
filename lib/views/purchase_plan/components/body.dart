import 'package:flutter/material.dart';
import 'package:naza_task/views/purchase_plan/components/build_container.dart';
import 'package:naza_task/views/purchase_plan/components/dot_container.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  int currentPage2 = 0;

  List<Map<String, String>> buildContainer = [
    {
      'text': 'Chat session',
      'subText': 'chat live session over text messages',
      'amount': 'Pay N1,500',
    },
    {
      'text': 'Video/voice session',
      'subText': 'One live session over text, voice and video',
      'amount': 'Pay N3,500',
    },
  ];
  List<Map<String, String>> buildContainer2 = [
    {
      'text': 'Nonaa Lite',
      'date': '(1 month)',
      'subText': 'Text chat sessions',
      'amount': 'Pay N15,000',
    },
    {
      'text': 'Naza dark',
      'date': '(2 month)',
      'subText': 'Voice/video chat session',
      'amount': 'Pay N25,000',
    },
    {
      'text': 'Naza dim',
      'date': '(3 month)',
      'subText': 'Voice/video chat session',
      'amount': 'Pay N35,000',
    },
    {
      'text': 'Nazano Bla',
      'date': '(4 month)',
      'subText': '4 sessions',
      'amount': 'Pay N45,000',
    },
  ];

  List<String> textSubText = [
    'Text chat sessions',
    'Voice/video chat session',
    'session expire after 30mins',
    '4sessions',
    'Join audio conversation in \nsafeSpace'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 40,
        ),
        Text(
          'ON-DEMAND PLANS'..toUpperCase(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SizedBox(
            height: 150,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                    // print(currentPage);
                  });
                },
                itemCount: buildContainer.length,
                itemBuilder: (context, index) => BuildContainer(
                      amount: buildContainer[index]['amount'],
                      subText: buildContainer[index]['subText'],
                      text: buildContainer[index]['text'],
                      color: currentPage == 0 ? Colors.red : Colors.green,
                      color2: currentPage == 0
                          ? Colors.red[100]
                          : Colors.green[100],
                    )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                buildContainer.length,
                (index) => DotContainer(
                      color: currentPage == index
                          ? Colors.black
                          : Colors.blueGrey[300],
                      width: currentPage == index ? 20.6 : 6.0,
                    ))
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Subscription plans.'.toUpperCase(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: SizedBox(
            height: 200,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage2 = value;
                    // print(currentPage2);
                  });
                },
                itemCount: buildContainer2.length,
                itemBuilder: (context, index) => BuildContainer2(
                      amount: buildContainer2[index]['amount'],
                      subText: textSubText[index],
                      text: buildContainer2[index]['text'],
                      color: currentPage2 == 0 ? Colors.purple : Colors.orange,
                      color2: currentPage2 == 0
                          ? Colors.purple[100]
                          : Colors.orange[100],
                      date: buildContainer2[index]['date'],
                    )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                buildContainer2.length,
                (index) => DotContainer(
                      color: currentPage2 == index
                          ? Colors.black
                          : Colors.blueGrey[300],
                      width: currentPage2 == index ? 20.6 : 6.0,
                    ))
          ],
        ),
      ],
    );
  }
}
