import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String query = '';
  int discount = 20;

  void decreaseDiscount() {
    setState(() {
      if (discount > 0) discount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filtered = Movies
        .where((m) =>
    m.title.toLowerCase().contains(query.toLowerCase()) ||
        m.genre.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Library'),
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.view_list : Icons.grid_view),
            onPressed: () => setState(() => isGrid = !isGrid),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (value) => setState(() => query = value),
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? const Center(child: Text('No movies found'))
                : isGrid
                ? GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) => MovieCard(
                movie: filtered[index],
                discount: discount,
                onDiscountTap: decreaseDiscount,
              ),
            )
                : ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) => SizedBox(
                height: 700,
                child: MovieCard(
                  movie: filtered[index],
                  discount: discount,
                  onDiscountTap: decreaseDiscount,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}