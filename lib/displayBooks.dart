import 'package:flutter/material.dart';

class DisplayBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookstore'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
      child: Icon(Icons.add),),
    );
  }
}
