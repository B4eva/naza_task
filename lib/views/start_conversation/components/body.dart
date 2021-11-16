import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                const Text(
                  "Yay!",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Funmilayo waved \nback at you',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'you have found someone new to work \nthe journey with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Colors.white)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircularPicture(
                      imageUrl: 'https://picsum.photos/250?image=9',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.clean_hands_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    CircularPicture(
                      imageUrl: 'https://picsum.photos/250?image=9',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),

                    // minWidth: double.infinity,
                    child: Text(
                      'Start Conversation',
                      style: TextStyle(
                          color: Colors.pink[300],
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Back to meet",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white),
                  ),
                )
              ],
            ))
      ],
    );
  }
}

class CircularPicture extends StatelessWidget {
  final String imageUrl;

  const CircularPicture({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage(imageUrl)),
          ),
        ),
      ),
    );
  }
}
