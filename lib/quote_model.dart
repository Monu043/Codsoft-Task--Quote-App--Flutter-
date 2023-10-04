import 'dart:math';

import 'package:flutter/material.dart';

class Quote {
  final String quote;
  final String writer;
  bool isFavorite;

  Quote({required this.quote, required this.writer, required this.isFavorite});
}

List<Quote> quotes = [
  Quote(
      quote:
        "You have to dream before your dreams can come true.",
      writer: "- A.P.J. Abdul Kalam",
      isFavorite: false),
  Quote(
      quote: "Change is the end result of all true learning.",
      writer: "- Dr. Sarvepalli Radhakrishnan",
      isFavorite: false),
  Quote(
      quote: "We are what our thoughts have made us; so take care about what you think. Words are secondary. Thoughts live; they travel far." ,
      writer: "- Swami Vivekananda",
      isFavorite: false),
  Quote(
      quote: "Arise, awake, and stop not until the goal is reached.",
      writer: " - Swami Vivekananda",
      isFavorite: false),

 Quote(
      quote: "The best way to predict your future is to create it.",
      writer: "- Dr. A.P.J. Abdul Kalam",
      isFavorite: false),

      
];

Random random = Random();
Color getRandomColor() {
  return Color.fromRGBO(
      random.nextInt(256), random.nextInt(234), random.nextInt(432), 1.0);
}
