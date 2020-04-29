import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatordemo/second_page.dart';

class FirstPage extends StatefulWidget {
    
    @override
    _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
    TextEditingController _nameController,_ageController;
    @override
  void initState() {
    _nameController = TextEditingController();
    _ageController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
      _nameController.dispose();
      _ageController.dispose();
    super.dispose();
  }
    @override
    Widget build(BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('First Page'),
          ),
          child: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoTextField(
                  controller: _nameController,
                ),
                SizedBox(
                  height: 30,
                ),
                CupertinoTextField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 30,
                ),
                CupertinoButton(
                  child: Text('Login'),
                  color: Colors.blue,
                  onPressed: (){
                    String name = _nameController.text ;
                    String age = _ageController.text ;
                      Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context)=>SecondPage(
                          name: name,
                          age: age
                        ))
                      );
                })
              ],
            )
          ),
        );
    }
}
