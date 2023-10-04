import 'package:flutter/material.dart';
import 'package:quote_app/Favorite.dart';
import 'package:quote_app/Post.dart';
import 'package:quote_app/SplashScreen.dart';
import 'package:quote_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Stack(
                    children: [
                      Offstage(
                        offstage: index != 0,
                        child: TickerMode(enabled: index == 0, 
                        child: MaterialApp(debugShowCheckedModeBanner: false, home: Home(),)),
                      ),
                      Offstage(
                        offstage: index != 1,
                        child: TickerMode(enabled: index == 1, 
                        child: MaterialApp(debugShowCheckedModeBanner: false, home: Post(),)),
                      ),
                      Offstage(
                        offstage: index != 2,
                        child: TickerMode(enabled: index == 2,
                         child: MaterialApp(debugShowCheckedModeBanner: false, home: Favorite(),)),
                      )
                    ],),
                    
              
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,),
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  label: "Post",
                  icon: Icon(
                    Icons.post_add,
                  ),
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: Icon(
                  Icons.favorite,
                ),
                backgroundColor: Colors.black,
              )
            ]));
  }
}
