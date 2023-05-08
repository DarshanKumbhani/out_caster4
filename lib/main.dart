import 'package:flutter/material.dart';
import 'package:out_caster4/provider/provider.dart';
import 'package:out_caster4/view/stapper_2.dart';
import 'package:out_caster4/view/stapper_3.dart';
import 'package:out_caster4/view/stapper_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => stepper_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>Stapper_3()
        },
      ),
    )
  );
}

