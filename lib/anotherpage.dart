import 'package:flutter/material.dart';
import 'package:officereservation/components/repeat.dart';

class AnotherPage extends StatefulWidget {
  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0, 0),
            child: Row(
              children: <Widget>[
                Container(
                    child: FlatButton(
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.chevron_left))),
                Center(
                  child: Column(
                    children: <Widget>[
                      CustomText(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10.0),
                        msg: "Saman KC",
                        color: Colors.blue,
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10.0),
                        msg: "Owner",
                        color: Colors.grey,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 34.0,
                  ),
                  height: 45.0,
                  width: 45.0,
                  margin: EdgeInsets.all(14.0),
                )
              ],
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10.0),
              child: Text(
                "My Reservations",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.deepPurple),
              )),
          RepeatCard(),
          RepeatCard(),
          RepeatCard(),
          RepeatCard(),
          Container(
              padding: EdgeInsets.only(left: 100, right: 20),
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                    child: Row(
                  children: <Widget>[
                    Icon(Icons.chevron_left),
                    Text(
                      "Return Back",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                )),
              ))
        ],
      )),
    );
  }
}
