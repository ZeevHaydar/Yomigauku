import 'package:flutter/material.dart';
import 'package:yomigauku/model/book.dart';
import 'package:yomigauku/screen/content_screen.dart';

class BookScreen extends StatelessWidget {
  final Book book;
  const BookScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> infoStrings = [
      'Genre: ${book.genre.join(", ")}',
      'Oleh: ${book.penulis}',
      'Penerbit: ${book.penerbit}',
      'Rating: ${book.rating.toStringAsFixed(2)}/5.00',
      'Tanggal Rilis: ${book.hariRilis}',
      'jumlah chapter: ${book.jumlahChapter}'
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    book.nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200,
                    child: Image.asset(book.image),
                  ),
                ),
                Center(
                  child: Column(
                      children: List.generate(6, (index) {
                    return Text(
                      infoStrings[index],
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    );
                  })),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(book.sinopsis),
                Container(
                  height: 10,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    "Chapters",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ),
                // Add text links to each chapter content screen
                for (int i = 1; i <= book.jumlahChapter; i++)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            // Create a Content object for the selected chapter
                            Content selectedContent = book.isi[i - 1];
                            return ContentScreen(content: selectedContent);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "Chapter $i: ${book.isi[i - 1].judulChapter}",
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
