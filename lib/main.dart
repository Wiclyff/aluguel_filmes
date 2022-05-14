import 'package:flutter/material.dart';

import 'catalogo_screen.dart';
import 'filme_1.dart';
import 'filme_2.dart';
import 'filme_3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (_) => CataogoScreen(),
      '/filme_1': (_) => filmeOne(),
      '/filme_2': (_) => filmeTwo(),
      '/filme_3': (_) => filmeThree(),
    },
  ));
}