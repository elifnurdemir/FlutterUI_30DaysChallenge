import 'package:flutter/material.dart';
import 'package:flutter_test_1/constants/constants.dart';

class GridViewGallery extends StatelessWidget {
  const GridViewGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Gallery',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // her bir satırda 2 item
            crossAxisSpacing: 2.0, // yatayda aralık
            mainAxisSpacing: 10.0, //dikeyde aralık
            childAspectRatio: 1,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(images[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}
