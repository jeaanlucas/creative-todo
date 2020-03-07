import 'package:creativetodo/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative TODO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Work Sans',
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
