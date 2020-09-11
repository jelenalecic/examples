import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor() {
  Random random = Random();
  int red, green, blue;

  red = random.nextInt(255);
  green = random.nextInt(255);
  blue = random.nextInt(255);

  return Color.fromARGB(255, red, green, blue);
}
