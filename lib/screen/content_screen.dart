import 'package:flutter/material.dart';
import 'package:yomigauku/model/book.dart';

class ContentScreen extends StatelessWidget {
  final Content content;
  const ContentScreen({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Center(
              child: Text(
                content.judulChapter,
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                content.konten,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
