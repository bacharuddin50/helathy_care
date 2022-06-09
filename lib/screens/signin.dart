import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helathy_care/screens/signup.dart';
import 'package:helathy_care/widget/widget.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  State<SignInPageWidget> createState() => _SignInPageWidgetState();
}

class _SignInPageWidgetState extends State<SignInPageWidget> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logo(),
                SizedBox(
                  height: 30,
                ),
                textField("Masukkan Email", Icons.person_outline, false,
                    emailTextController),
                SizedBox(
                  height: 20,
                ),
                textField("Masukkan Password", Icons.lock_outline, true,
                    passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {}),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Tidak punya akun?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpPageWidget()));
          },
          child: const Text(
            "Daftar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
