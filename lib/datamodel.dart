import 'package:flutter/material.dart';

class Book{
  String title, author;
  double price;

  Book({this.title, this.author, this.price});
}

class BookModel extends ChangeNotifier{
  List<Book> booklist = [];

  addBookToModel({String title, String author, double price}){
    booklist.add(Book(title: title, author: author,price: price));
    notifyListeners();
  }
}