import 'package:flutter/material.dart';
import 'package:http_app/screens/login/widgets/laith_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.network(
                "https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg",
                width: 150,
              ),
              const SizedBox(height: 10),
              LaithField(
                hintText: "username",
                controller: usernameController,
                icon: Icons.person,
              ),
              const SizedBox(height: 4),
              LaithField(
                hintText: 'password',
                controller: passwordController,
                icon: Icons.password,
              ),
              const SizedBox(height: 16),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 32,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Login")))
            ],
          ),
        ),
      ),
    );
  }
}
