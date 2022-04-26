import 'package:flutter/material.dart';
import 'package:login_black/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // key untuk Form Flutter
  final _key = GlobalKey<FormState>();

  // Create a text controller. Later, use it to retrieve the
  // current value of the TextField.
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // emailInput
    Widget emailInput() {
      return TextFormField(
        controller: usernameController,
        decoration: InputDecoration(
          hintText: "Johnsondoe@nomail.com",
          hintStyle: isiForm,
          label: Text(
            "Email",
            style: isiForm,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Email tidak boleh kosong";
          }
          return null;
        },
        onChanged: (val) {
          setState(() {
            val == usernameController;
          });
        },
      );
    }

    // passwordInput
    Widget passInput() {
      return TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          hintStyle: isiForm,
          label: Text("Password", style: isiForm),
          suffixIcon: Icon(Icons.visibility),
          suffixIconColor: Colors.white54,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Password tidak boleh kosong";
          }
          return null;
        },
        obscureText: true,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          // 1. Background Color
          Container(
            color: bgColor,
          ),
          // 2. Isi kontent
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 45),
              child: Column(
                children: [
                  // 1. Gambar Utama
                  Image.asset("assets/img/sapiens1.png"),
                  // 2. Welcome Back !
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome back!  ",
                        style: judul,
                      ),
                      Icon(Icons.health_and_safety, color: Colors.yellow),
                    ],
                  ),
                  SizedBox(height: 50),
                  // 3. Form --> username, password, submitBtn
                  Container(
                    padding: EdgeInsets.only(left: 36, right: 36),
                    child: Form(
                      key: _key,
                      child: Column(
                        children: [
                          // username
                          emailInput(),
                          SizedBox(height: 30),
                          // password
                          passInput(),
                          SizedBox(height: 24),
                          // Login Submit
                          Container(
                            height: 68,
                            child: RaisedButton(
                              color: btnPrimary,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Log In",
                                    style: primBtnStyle,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 14),
                          // // Login with Google
                          Container(
                            height: 68,
                            child: RaisedButton(
                              color: btnSecondary,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/img/google.png",
                                      height: 18, width: 18),
                                  SizedBox(width: 20),
                                  Text(
                                    "Log In with Google",
                                    style: secondBtnStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 4. Newbie? Daftar.
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
