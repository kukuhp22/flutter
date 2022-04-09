import 'package:explora_apps/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // form
  final _form = GlobalKey<FormState>();
  final _nm = TextEditingController();
  final _unam = TextEditingController();
  final _pass = TextEditingController();
  bool _isVisible = false;

  void changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: agakPutih,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. judul
              Text(
                "EXPLORA",
                style: judul,
              ),
              // 2. sub judul
              Text(
                "- IF NOT NOW, WHEN ? -",
                style: subJudul,
              ),
              SizedBox(height: 60),
              // 3. form
              Form(
                key: _form,
                child: Column(
                  children: [
                    // 1. TextField Username
                    Container(
                      width: 286,
                      height: 43,
                      child: TextFormField(
                        controller: _unam,
                        decoration: InputDecoration(
                          fillColor: putihCol,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: bgCol, width: 2),
                          ),
                          hintText: "Email ID",
                          hintStyle: formStyle,
                          prefixIcon: Icon(
                            Icons.person,
                            color: greyCol,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // 2. TextField Password
                    Container(
                      width: 286,
                      height: 43,
                      child: TextFormField(
                        obscureText: _isVisible,
                        controller: _pass,
                        decoration: InputDecoration(
                          fillColor: putihCol,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                          hintText: "Password",
                          hintStyle: formStyle,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: greyCol,
                          ),
                          suffixIcon: (_isVisible == false)
                              ? IconButton(
                                  color: greyCol,
                                  icon: Icon(Icons.visibility),
                                  onPressed: () {
                                    changeVisibility();
                                  },
                                )
                              : IconButton(
                                  color: greyCol,
                                  icon: Icon(Icons.visibility_off),
                                  onPressed: () {
                                    changeVisibility();
                                  },
                                ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    // 3. Submit Login
                    Container(
                      width: 173,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_form.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: bgCol,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          "LOG IN",
                          style: btnText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // 4. divider
              // Divider(
              //   thickness: 1,

              //   color: bgCol,
              // ),
              Container(
                width: 170,
                height: 1,
                color: bgCol,
              ),
              SizedBox(height: 5),
              // 5. forgot
              Text(
                "Forgot your password ?",
                style: formStyle,
              ),
              SizedBox(height: 30),
              // 6. iconbutton
              IconButton(
                icon: Icon(Icons.keyboard_arrow_up),
                iconSize: 42,
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                color: bgCol,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
