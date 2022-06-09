import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helathy_care/screens/home.dart';
import 'package:helathy_care/widget/widget.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageWidget> createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  TextEditingController userTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Daftar Akun",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF2D31FA),
          Color(0xFF5D8BF4),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                textField("Masukkan Username", Icons.person_outline, false,
                    userTextController),
                const SizedBox(
                  height: 20,
                ),
                textField("Masukkan Email", Icons.person_outline, false,
                    emailTextController),
                const SizedBox(
                  height: 20,
                ),
                textField("Masukkan Password", Icons.person_outline, false,
                    passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, false, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => HomePageWidget())));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
