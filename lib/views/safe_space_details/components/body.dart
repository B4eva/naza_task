import 'package:flutter/material.dart';
import 'package:naza_task/const_strings.dart';
import 'package:naza_task/models/match.dart';
import 'package:naza_task/views/views.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(color: Colors.red[50]),
            width: double.infinity,
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      text1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15, color: Colors.red[100]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 200,
                    child: Text(
                      text2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        const Text(
          memebers,
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.builder(
            itemCount: match.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 2
                      : 4,
              crossAxisSpacing: 4,
              mainAxisSpacing: 30,
              // childAspectRatio: (2 / 1),
            ),
            itemBuilder: (
              context,
              index,
            ) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red[100],
                        backgroundImage: const NetworkImage(
                            'https://picsum.photos/250?image=9'),
                        maxRadius: 20,
                      ),
                      Flexible(
                        child: Text(match[index].name!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.black),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SessionEnded.routeName);
            },
            child: const Text('For testing'))
      ],
    );
  }
}
