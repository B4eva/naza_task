import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: 1),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            shape: BoxShape.circle,
            image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/250?image=9')),
          ),
        ),
      ),
    );
  }
}
