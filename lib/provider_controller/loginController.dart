import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginProvider extends ChangeNotifier {
  void logIn(String email, String passWord) async {
    try {
      Response response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {"email": email, "password": passWord});

      if (response.statusCode == 200) {
        print("login successful");
      } else {
        print("Login Failed");
      }
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }
}
