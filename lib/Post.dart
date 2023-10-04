import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class Quotepost {
  final String text;
  final String author;
  Quotepost({required this.author, required this.text});
}

class _PostState extends State<Post> {
  final List<Quotepost> quotepost = [
 Quotepost(
      text:
          "Love is not just looking at each other; its looking in the same direction.",
      author: "Antonie de Saint",
 ),
  Quotepost(
      text: "What is the full form of CPU?",
      author: "writer",
  ),

  ];
  final TextEditingController _quotetextController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();

  void addPost(String author, String quote) {
    setState(() {
      quotepost.add(Quotepost(author: author , text: quote ));
    });
  }

  @override
  void dispose() {
    _authorController.dispose();
    _quotetextController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        title: Text("Post", style: TextStyle(color: Colors.black,fontSize: 30),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            controller: _quotetextController,
            decoration: InputDecoration(labelText: 'Quote Text'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _authorController,
            decoration: InputDecoration(labelText: 'Writer'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
             onPressed: () {},
              child: const Text('Post Quote'))
        ],
      ),
    );
  }
}
