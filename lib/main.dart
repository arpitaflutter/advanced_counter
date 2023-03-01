import 'package:advanced_counter/screen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/view/counter_screen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => counter_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => counter_screen(),
        },
      ),
    ),
  );
}