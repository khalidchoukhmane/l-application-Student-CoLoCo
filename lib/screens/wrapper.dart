import 'package:flutter/material.dart';
import 'package:locationapp/models/user.dart';
import 'package:locationapp/screens/search.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);


      return Search();

  }
}