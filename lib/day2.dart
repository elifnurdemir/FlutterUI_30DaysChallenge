import 'package:flutter/material.dart';
import 'package:flutter_test_1/constants/constants.dart';

class VerticalListViewBuilder extends StatelessWidget {
  const VerticalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vertical ListView Builder',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink[100],
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        // İçeriği dikey ve yatay olarak ortalar
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height:
                      MediaQuery.of(
                        context,
                      ).size.height, // container içerisindeki imgler
                  width: 150.0,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
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
