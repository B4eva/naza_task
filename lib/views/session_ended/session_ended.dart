import 'package:flutter/material.dart';
import 'package:naza_task/views/Home/home.dart';

import 'components/circular_profile.dart';

class SessionEnded extends StatefulWidget {
  static String routeName = 'sessionEndedPage';
  const SessionEnded({Key? key}) : super(key: key);

  @override
  State<SessionEnded> createState() => _SessionEndedState();
}

class _SessionEndedState extends State<SessionEnded> {
  int selectedStar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  // color: Colors.white,
                  )),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Session has Ended \nplease rate your experience',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CircularProfile(),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Dr Sadiya Farauqe',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(5, (index) => _buildStar(index)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 60),
                    child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Home.routeName);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  color: Colors.purple[300],
                                ),

                                // minWidth: double.infinity,
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                )))),
                  )
                ],
              ))
        ],
      )),
    );
  }

  GestureDetector _buildStar(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedStar = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 15,
        ),
        padding: const EdgeInsets.all(8),
        height: 20,
        width: 20,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Icon(Icons.star,
            color: selectedStar == index
                ? Colors.purple[600]
                : Colors.purple[100]),
      ),
    );
  }
}
