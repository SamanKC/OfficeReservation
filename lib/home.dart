import 'package:flutter/material.dart';
import 'package:officereservation/anotherpage.dart';
import 'package:officereservation/components/repeat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  height: 50.0,
                  width: 50.0,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://samankc.com.np/assets/img/profile.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    height: 50.0,
                    width: 50.0,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "All",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                Container(
                    height: 50.0,
                    width: 90.0,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Reserved",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                Container(
                    height: 50.0,
                    width: 90.0,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Available",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ],
            ),
          ),
          Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int i) => Card(
                  elevation: 5,
                  child: Container(
                    width: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Today Morning'),
                        Text(
                          'Company',
                          style: TextStyle(color: Colors.pink),
                        ),
                        Text('Space'),
                      ],
                    ),
                  ),
                ),
              )),
          Container(
              height: 100.0,
              padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[Text("Hello"), Text("Hello")],
                      ),
                      Icon(Icons.ac_unit)
                    ],
                  ))),
          Container(
              height: 100.0,
              padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[Text("Hello"), Text("Hello")],
                      ),
                      Icon(Icons.ac_unit)
                    ],
                  ))),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: FlatButton(
          //       onPressed: () {},
          //       child: Container(
          //         child: Row(
          //           children: <Widget>[
          //             Text('Create Space', style: TextStyle(fontSize: 20)),
          //             Icon(Icons.chevron_right)
          //           ],
          //         ),
          //       )),
          // )
          Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                splashColor: Colors.blueAccent,
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnotherPage()),
                  );
                },
                child: Text(
                  "Create Space",
                  style: TextStyle(fontSize: 20.0),
                ),
              ))
        ],
      )),
    );
  }
}
