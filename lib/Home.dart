import 'package:flutter/material.dart';
import 'package:quote_app/Life.dart';
import 'package:quote_app/My_Post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Quote",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 2,
          primary: false,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyPost()));
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  "My Post",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 200, 46, 195), borderRadius: BorderRadius.circular(20)),
              ),
            ),
            InkWell(
              onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LifeQuote()));
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Life",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 17, 0),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Attitude",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Religious",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 153, 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Travel",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 248, 74),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Book",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 235, 1),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ));
  }
}
