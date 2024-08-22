import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 247, 45, 122),
        textStyle: const TextStyle(fontSize: 20,));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_login.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Image.asset('assets/images/logo_login.png'),
                  ),
                  Container(
                    child: const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                    decoration: const InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: style,
                        onPressed:(){},
                        child: const Text('Entrar'),
                    ),
                  ),
                ], //children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
