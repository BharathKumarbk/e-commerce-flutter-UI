import 'package:ecommerceflutterbapp/details.dart';
import 'package:ecommerceflutterbapp/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(EcomHome());

class EcomHome extends StatefulWidget {
  @override
  _EcomHomeState createState() => _EcomHomeState();
}

class _EcomHomeState extends State<EcomHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(BuildContext context)=> EcomAppBar(),
        '/details':(BuildContext context)=> EcomDetails(),
      },
    );
  }
}
