import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final Alignment alignment;
  final EdgeInsets padding;
  final String msg;
  final Color color;
  final FontWeight weight;

  CustomText(
      {@required this.alignment,
      @required this.padding,
      @required this.msg,
      @required this.color,
      @required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment ?? Alignment.topLeft,
        padding: padding ?? EdgeInsets.only(left: 20.0),
        child: Text(
          msg,
          style: TextStyle(
              fontWeight: weight ?? FontWeight.bold,
              color: color ?? Colors.black),
        ));
  }
}

class RepeatCard extends Container {
  RepeatCard()
      : super(
          height: 100.0,
          padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
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
                          padding: EdgeInsets.all(5.0),
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
                      Icons.add_box,
                      color: Colors.black,
                      size: 34.0,
                    ),
                    height: 45.0,
                    width: 45.0,
                    margin: EdgeInsets.all(14.0),
                  ),
                ],
              ),
            ),
          ),
        );
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Size size;
  final double height;
  final double width;
  final EdgeInsets margin;

  CustomCard(
      {@required this.icon,
      @required this.color,
      @required this.size,
      @required this.height,
      @required this.width,
      @required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon ?? Icons.ac_unit,
        color: color ?? Colors.black,
        size: size ?? 34,
      ),
      height: height ?? 45.0,
      width: width ?? 45,
      margin: margin ?? EdgeInsets.all(14.0),
    );
  }
}
