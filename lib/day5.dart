import 'package:flutter/material.dart';

class ValidatedLoginPage extends StatefulWidget {
  const ValidatedLoginPage({super.key});

  @override
  State<ValidatedLoginPage> createState() => _ValidatedLoginPageState();
}

class _ValidatedLoginPageState extends State<ValidatedLoginPage> {
  //form key to main form state
  final _formKey = GlobalKey<FormState>();
  //text editing form field controllers to get field text
  final _emailAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscure = true;
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
                key: _formKey,
                child: Column(
                  children: [
                    //EMAIL ADDRESS
                    TextFormField(
                      controller: _emailAddressController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      //validation ekleme
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email address cannot be empty';
                        }
                        //email format kontrolü
                        if (!RegExp(
                          r"^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                        ).hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null; //null dönerse hata yok demektir
                      },
                    ),
                    const SizedBox(height: 30.0),
                    //PASSWORD FORM FIELD
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _isObscure,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromRGBO(248, 187, 208, 1),
                        ),
                        suffixIcon: IconButton(
                          icon:
                              _isObscure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure; //şifre göster/gizle
                            });
                          },
                        ), //şifre göster/gizle

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(248, 187, 208, 1),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password cannot be empty';
                        }
                        //şifre uzunluk kontrolü
                        if (value.length < 6) {
                          return 'The password is too short';
                        }

                        return null; //null dönerse hata yok demektir
                      },
                    ),
                    //Login Button
                    const SizedBox(height: 30.0),
                    GestureDetector(
                      onTap: () {
                        //formun geçerli olup olmadığını kontrol etme
                        if (_formKey.currentState!.validate()) {
                          //
                          print('Form submitted');
                        } else {
                          print('Form has error');
                        } //null dönerse hata var demektir
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
