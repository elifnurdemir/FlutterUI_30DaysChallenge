import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100.0),
              //APP LOGO
              Center(child: Image.asset('assets/img/insta.png', height: 200.0)),
              const SizedBox(height: 20.0),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(13, 71, 161, 1),
                ),
              ),
              const SizedBox(height: 20.0),
              //FORM WIDGET
              Form(
                child: Column(
                  children: [
                    //EMAIL ADDRESS
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Email Address',
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color.fromRGBO(248, 187, 208, 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(248, 187, 208, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    //PASSWORD FORM FIELD
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromRGBO(248, 187, 208, 1),
                        ),
                        suffixIcon: const Icon(Icons.visibility),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(248, 187, 208, 1),
                          ),
                        ),
                      ),
                    ),
                    //Login Button
                    const SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        print('Clicked button');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 50.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 187, 208, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color.fromRGBO(13, 71, 161, 1),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
