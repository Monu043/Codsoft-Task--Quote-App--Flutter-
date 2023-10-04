import 'package:flutter/material.dart';
import 'package:quote_app/main.dart';
import 'package:quote_app/quote_model.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [IconButton(onPressed: () {
           Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
               
        }, icon: Icon(Icons.arrow_back))],
        title: Text("Favorite Quotes",style: TextStyle(color: Colors.black, fontSize: 30),),
        centerTitle: true,
      ),
      body: 
        PageView.builder(
          itemCount: quotes.where((quote) => quote.isFavorite).length,
          itemBuilder: (BuildContext context, int index) {
      final favoriteQuotes = quotes.where((quote) => quote.isFavorite).toList();
      return Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.all(20), 
                  padding: EdgeInsets.all(20),  
                  decoration: BoxDecoration(
                  color: getRandomColor(),
                  borderRadius: BorderRadius.circular(20)
                  ),
                    child: Column(
                      children: [
                        Text(
                          favoriteQuotes[index].quote,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10,width: 60,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text( favoriteQuotes[index].writer,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                      ),
                          ],
                        ),
                      ]),
         ) ]); })
    );
  }
 }
