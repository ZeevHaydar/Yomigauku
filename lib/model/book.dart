import 'package:yomigauku/model/book1.dart';
import 'package:yomigauku/model/book2.dart';

class Content {
  final String judulChapter;
  final String konten;

  Content({required this.judulChapter, required this.konten});
}

class Book {
  String nama;
  List<String> genre;
  String hariRilis;
  double rating;
  String penulis;
  String penerbit;
  String sinopsis = "";
  List<Content> isi = [];
  String image;
  int jumlahChapter;

  Book({
    required this.nama,
    required this.genre,
    required this.hariRilis,
    required this.rating,
    required this.penulis,
    required this.penerbit,
    required this.sinopsis,
    required this.isi,
    required this.image,
    required this.jumlahChapter,
  });
}

List<Book> books = [book1, book2];
