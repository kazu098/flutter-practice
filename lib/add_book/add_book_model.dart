import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddBookModel extends ChangeNotifier {
  String? title;
  String? author;

  Future addBook() async {
    if (title == null || title!.isEmpty) {
      throw 'タイトルが入力されていません';
    }
    if (author == null || author!.isEmpty) {
      throw '著者が入力されていません';
    }

    await FirebaseFirestore.instance.collection('books').add({
      'title': title,
      'author': author,
    });
  }
}
