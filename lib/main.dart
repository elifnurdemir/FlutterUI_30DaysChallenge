import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height:MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/img/avatars.jpg',fit: BoxFit.fill,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
