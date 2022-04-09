import 'package:explora_apps/constants.dart';
import "package:flutter/material.dart";

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
    // void super(){}

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
                    // 1. TextField Nama Lengkap
                    Container(
                      width: 286,
                      height: 43,
                      child: TextFormField(
                        controller: _nm,
                        decoration: InputDecoration(
                          fillColor: putihCol,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: bgCol, width: 2),
                          ),
                          hintText: "Your name",
                          hintStyle: formStyle,
                          prefixIcon: Icon(
                            Icons.person,
                            color: greyCol,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // 2. TextField Username
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
                            Icons.mail_outline,
                            color: greyCol,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // 3. TextField Password
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
                                  icon: Icon(Icons.visibility),
                                  onPressed: () {
                                    changeVisibility();
                                  },
                                  color: greyCol,
                                )
                              : IconButton(
                                  icon: Icon(Icons.visibility_off),
                                  onPressed: () {
                                    changeVisibility();
                                  },
                                  color: greyCol,
                                ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    // 3. Submit Register
                    Container(
                      width: 173,
                      height: 43,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: bgCol,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          "Sign Up".toUpperCase(),
                          style: btnText,
                        ),
                      ),
                    ),
                  ],
                ),
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
