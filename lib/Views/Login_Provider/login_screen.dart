import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider_controller/loginController.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _loginController = Provider.of<LoginProvider>(context);
    TextEditingController textEditingController = TextEditingController();
    TextEditingController textEditingController2 = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login with Provider"),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                filled: true,
                hintText: "Enter E-Mail",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: textEditingController2,
              decoration: const InputDecoration(
                filled: true,
                hintText: "Enter Password",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      _loginController.logIn(
                          textEditingController.text.toString(),
                          textEditingController2.text.toString());
                    },
                    child: const Text("Login")))
          ],
        ),
      ),
    );
  }
}
