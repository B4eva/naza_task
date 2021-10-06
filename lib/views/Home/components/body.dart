import 'package:flutter/material.dart';
import 'package:naza_task/const_strings.dart';
import 'package:naza_task/models/match.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Text(
                matches,
                style: TextStyle(color: Colors.red[200]),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: search,
                        prefixIcon: Icon(Icons.search, color: Colors.red[200]),
                        hintStyle:
                            TextStyle(color: Colors.red[200], fontSize: 12),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
                itemCount: matches.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 16),
                itemBuilder: (context, index) {
                  return _MatchesList(
                    name: match[index].name,
                    imageUrl: match[index].imageURL,
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class _MatchesList extends StatelessWidget {
  const _MatchesList({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  final String? name;

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(name);
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name!,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon:
                  Icon(Icons.question_answer_outlined, color: Colors.pink[50]),
              onPressed: () {},
            ),
            const Divider(
              color: Colors.grey,
              thickness: 5,
            )
          ],
        ),
      ),
    );
  }
}
