  import 'package:flutter/material.dart';
  import 'package:flutter_application_3/loginscreen.dart';

  void main() {
    runApp(registration());
  }

  class registration extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 238, 238, 238),
          body: RegistrationForm(),
        ),
      );
    }
  }

  class RegistrationForm extends StatefulWidget {
    @override
    _RegistrationFormState createState() => _RegistrationFormState();
  }

  class _RegistrationFormState extends State<RegistrationForm> {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(0.0, 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Welcome to Onboard!',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Let’s help to meet up your tasks.',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none, // Hilangkan stroke
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 45),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(455, 55 ),
                      backgroundColor: Color.fromRGBO(92, 203, 241, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {
                      print('Name: ${_nameController.text}');
                      print('Email: ${_emailController.text}');
                      print('Password: ${_passwordController.text}');
                      print('Confirm Password: ${_confirmPasswordController.text}');
                      Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>  Login()
                  ),
                  );
                  
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: "Ibarra",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(254, 254, 254, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Sing Up',
                        style: TextStyle(
                          color: Color.fromRGBO(92, 203, 241, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Transform.translate(
    offset: Offset(-50, -18), 
    child: Image.asset('images/shape.png',width: 150), 
  )
          ],
        ),
      );
    }

    @override
    void dispose() {
      _nameController.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _confirmPasswordController.dispose();
      super.dispose();
    }
  }