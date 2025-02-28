import 'package:booklist_providerdemo_flutter/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:booklist_providerdemo_flutter/displayBooks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context)=>BookModel(),
        child: DisplayBooks(),
      ),
    );
  }
}
