import 'package:flutter/material.dart';

class HorizontalListViewBuilder extends StatelessWidget {
  const HorizontalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // list of network imgs
    List<String> images = [
      'https://i.pinimg.com/736x/6e/5c/05/6e5c05e62192325007fd1b0ea96ffc82.jpg',
      'https://i.pinimg.com/736x/4b/9c/1e/4b9c1e6c1773d0a94bf152092822da73.jpg',
      'https://i.pinimg.com/736x/87/3a/c9/873ac94448e3e70f86e1430a1e92499b.jpg',
      'https://i.pinimg.com/736x/d6/d2/21/d6d2212347275ef9806c309f0a58213f.jpg',
      'https://i.pinimg.com/736x/d3/d2/82/d3d282cbc7f0abd716a7c99ddc92ed8f.jpg',
    ];

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
