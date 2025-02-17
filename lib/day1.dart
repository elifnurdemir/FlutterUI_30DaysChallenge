import 'package:flutter/material.dart';
import 'package:flutter_test_1/constants/constants.dart';

class HorizontalListViewBuilder extends StatelessWidget {
  const HorizontalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Horizontal ListView Builder',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink[100],
        foregroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        // İçeriği dikey ve yatay olarak ortalar
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 300.0,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 200.0,
                  width: 150.0,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
