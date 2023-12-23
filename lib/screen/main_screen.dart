import 'package:flutter/material.dart';
import 'package:yomigauku/model/book.dart';
import 'package:yomigauku/screen/book_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Book> theBooks = books;
  List<String> selectedGenres = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novel List'),
        backgroundColor: const Color(0xff377d5c),
        foregroundColor: const Color(0xffe6f0eb),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context),
          ),
        ],
      ),
      body: theBooks.isEmpty
          ? const Center(child: Text('No books available.'))
          : ListView.builder(
              itemCount: theBooks.length,
              itemBuilder: (context, index) {
                final book = theBooks[index];
                return Card(
                  color: const Color(0xffe3faf5),
                  child: ListTile(
                    leading: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        book.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Text(book.nama),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Author: ${book.penulis}'),
                        Text('Penerbit: ${book.penerbit}'),
                        Text('Genre: ${book.genre.join(", ")}'),
                        Row(
                          children: [
                            StarRating(rating: book.rating),
                            Text(book.rating.toStringAsFixed(2))
                          ],
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BookScreen(book: book);
                        }),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }

  Future<void> _showFilterDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Filter by Genre'),
              content: SingleChildScrollView(
                child: Column(
                  children: books
                      .expand((book) => book.genre)
                      .toSet()
                      .map(
                        (genre) => CheckboxListTile(
                          title: Text(genre),
                          value: selectedGenres.contains(genre),
                          onChanged: (bool? value) {
                            setState(() {
                              if (value != null) {
                                if (value) {
                                  selectedGenres.add(genre);
                                } else {
                                  selectedGenres.remove(genre);
                                }
                                _applyFilter();
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _applyFilter();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _applyFilter() {
    setState(() {
      if (selectedGenres.isEmpty) {
        theBooks = books;
      } else {
        theBooks = books
            .where((book) =>
                book.genre.any((genre) => selectedGenres.contains(genre)))
            .toList();
      }
    });
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int filledStars = rating.floor();

    return Row(
      children: List.generate(
        5,
        (index) {
          if (index < filledStars) {
            return const Icon(Icons.star, color: Colors.amber);
          } else if (index == filledStars) {
            if (rating > 4.7) {
              return const Icon(Icons.star, color: Colors.amber);
            } else {
              return const Icon(Icons.star_half, color: Colors.amber);
            }
          } else {
            return const Icon(Icons.star_border, color: Colors.amber);
          }
        },
      ),
    );
  }
}
