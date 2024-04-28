import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;

  bool isUsernameValid(String? username) {
    var re = RegExp(r"^\w+$", unicode: true);
    if (username == null) return false;
    return username.length >= 8 && re.hasMatch(username);
  }

  bool isPasswordValid(String? password) {
    var re = RegExp(r"^[\w@&\$!#\?%]+$", unicode: true);
    var cap = RegExp(r"[A-Z]", unicode: true);
    var low = RegExp(r"[a-z]", unicode: true);
    var num = RegExp(r"[0-9]", unicode: true);
    var char = RegExp(r"[@&\$!#\?%]", unicode: true);

    if (password == null) return false;

    bool hasRequiredChars = cap.hasMatch(password) &&
        low.hasMatch(password) &&
        num.hasMatch(password) &&
        char.hasMatch(password);

    return password.length >= 8 && re.hasMatch(password) && hasRequiredChars;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Username"),
                        hintText: "At least 8 characters"),
                    onSaved: (value) => setState(() => username = value),
                    validator: (value) {
                      if (!isUsernameValid(value)) {
                        return "Alphanumeric characters and underscores only";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Password"),
                        hintText: "At least 8 characters"),
                    obscureText: true,
                    onSaved: (value) => setState(() => password = value),
                    validator: (value) {
                      if (!isPasswordValid(value)) {
                        return "Must contain A-z, 0-9, !@#\$?&%";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print("Got it!");
                      }
                    },
                    child: Text("Log in"))
              ],
            ),
          )),
    );
  }
}
