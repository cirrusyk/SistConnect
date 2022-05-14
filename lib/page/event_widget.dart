import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  final String title;
  final String date;
  final String image;
  final String description;

  const Event({
    Key key,
    this.title,
    this.date,
    this.image,
    this.description,
  }) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 15),
        color: const Color.fromRGBO(34, 38, 60, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.0), bottom: Radius.zero),
              child: Image(
                image: AssetImage(/*Insert image*/ widget.image),
                fit: BoxFit.fill,
                height: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    /*"Event"*/ widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Card(
                    color: const Color.fromRGBO(95, 112, 255, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                      child: Text(
                        /*"date"*/ widget.date,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  widget.description /*Description*/,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            ),
          ],
        ));
  }
}
