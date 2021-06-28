import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Widget rating(double marg, var title, var subtitle) {
    return Container(
      height: 170,
      width: 170,
      margin: EdgeInsets.only(right: marg),
      child: ListTile(
        title: Text(title),
        subtitle: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(subtitle),
          ],
        ),
      ),
    );
  }

  Widget cont(double marg, var pic) {
    return Container(
        height: 170,
        width: 170,
        margin: EdgeInsets.only(right: marg),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage(pic))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text("Ecom App ui",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            title: Text("Items",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
            trailing: Text(
              "View more",
              style: TextStyle(color: Colors.pink[900]),
            ),
          ),
          SizedBox(
              height: 200.0,
              width: 350.0,
              child: Carousel(
                borderRadius: true,
                radius: Radius.circular(10),
                dotSize: 3,
                images: [
                  AssetImage(
                      "DUCATI_PANIGALE_V4_SP-_3__UC211435_High_1605733382-e1605736100770.jpg"),
                  AssetImage("macbook-air_overview__15sjf4iagj6q_og.png"),
                  AssetImage("photo-1593460354583-4224ab273cfe.jpg")
                ],
              )),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text("Popular Items",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
            trailing: Text(
              "View more",
              style: TextStyle(color: Colors.pink[900]),
            ),
          ),
          Row(
            children: [
              cont(20,
                  "Apple_iphone12pro-stainless-steel-gold_10132020_inline.jpg.large.jpg"),
              cont(0,
                  "backlit-mac-keyboard-standard-keyboard-28800045706_1024x1024.jpg")
            ],
          ),
          Row(
            children: [
              rating(20, "Iphone", "4.3 ratings"),
              rating(0, "Keyboard", "5.0 ratings")
            ],
          ),
          Row(
            children: [
              cont(20, "ducati-ogi.jpg"),
              cont(0, "macbook-air_overview__15sjf4iagj6q_og.png")
            ],
          ),
          Row(
            children: [
              rating(20, "Ducatti 990", "7.0 ratings"),
              rating(0, "Macbook air", "6.0 ratings")
            ],
          ),
          Row(
            children: [
              cont(20, "photo-1593460354583-4224ab273cfe.jpg"),
              cont(0,
                  "backlit-mac-keyboard-standard-keyboard-28800045706_1024x1024.jpg")
            ],
          ),
          Row(
            children: [
              rating(20, "BMW", "7.0 ratings"),
              rating(0, "Backlit keyboard", "3.7 ratings")
            ],
          )
        ]),
      ),
    );
  }
}
