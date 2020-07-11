import 'package:flutter/material.dart';
import 'package:locationapp/screens/search.dart';
import 'package:locationapp/screens/wrapper.dart';
import 'package:locationapp/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}