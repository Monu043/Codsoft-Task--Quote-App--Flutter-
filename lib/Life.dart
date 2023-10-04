import 'package:flutter/material.dart';
import 'package:quote_app/main.dart';
import 'package:quote_app/quote_model.dart';

class LifeQuote extends StatefulWidget {
  const LifeQuote({super.key});

  @override
  State<LifeQuote> createState() => _LifeQuoteState();
}

class _LifeQuoteState extends State<LifeQuote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.arrow_back))
          ],
          title: Text("Life Quote",style: TextStyle(color: Colors.black, fontSize: 30),),
          centerTitle: true,
        ),
        body: PageView.builder(
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
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
                          quotes[index].quote,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10,width: 60,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text( quotes[index].writer,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                      ),
                          ],
                        ),
                      SizedBox(height: 10,),

                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             child: IconButton(
                              padding: EdgeInsets.only(left: 0),
                              icon: Icon(
                                quotes[index].isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: quotes[index].isFavorite ? Colors.red : Colors.white,
                                size: 40,
                                
                              ),
                              onPressed: () {
                                setState(() {
                                  quotes[index].isFavorite =
                                      !quotes[index].isFavorite;
                                });
                              },
                                                 ),
                           ),
                            Icon(
                        Icons.share,
                        size: 40,
                        color: Colors.white,
                      ),
                         
                         ],
                       ),
                
                    
                     
                      ],
                    ),
                  ),
                       
                ],
              );
            }));
  }
}
