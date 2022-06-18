import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

ClipOval logo() {
  return ClipOval(
    child: CachedNetworkImage(
      imageUrl:
          'data:image/png;base64,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',
      fit: BoxFit.cover,
    ),
  );
}

TextField textField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: 100,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? 'MASUK' : 'DAFTAR',
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
