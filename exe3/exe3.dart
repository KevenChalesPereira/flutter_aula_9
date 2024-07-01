import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieListApp(),
    );
  }
}

class MovieListApp extends StatefulWidget {
  @override
  _MovieListAppState createState() => _MovieListAppState();
}

class _MovieListAppState extends State<MovieListApp> {
  final List<String> _movies = [];
  final TextEditingController _controller = TextEditingController();
  final Set<String> _likedMovies = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter movie name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _movies.add(_controller.text);
                      _controller.clear();
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _movies.length,
              itemBuilder: (context, index) {
                final movie = _movies[index];
                final isLiked = _likedMovies.contains(movie);
                return ListTile(
                  title: Text(movie),
                  trailing: Icon(
                    isLiked ? Icons.thumb_up : Icons.thumb_up_off_alt,
                    color: isLiked ? Colors.blue : null,
                  ),
                  onTap: () {
                    setState(() {
                      if (isLiked) {
                        _likedMovies.remove(movie);
                      } else {
                        _likedMovies.add(movie);
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
