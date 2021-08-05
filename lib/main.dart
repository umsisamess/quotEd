import 'dart:js';
import 'package:quoted/pages/home.dart';
import 'package:quoted/pages/loading.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    initialRoute : '/',
    routes: {
      '/' : (context) => Home(),
      '/loading' : (context) => Loading(),
      // '/question' : (context) => Question(),
    },
  ));

