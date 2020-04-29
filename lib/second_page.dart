import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name , age ;
  SecondPage({this.name,this.age});
    @override
    Widget build(BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Second Page'),
            previousPageTitle: 'First Page',
          ),
          child:SafeArea(child: Text('Hiii $name your age is $age'))
        );
    }
}
