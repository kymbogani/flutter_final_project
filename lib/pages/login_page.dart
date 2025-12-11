import 'package:finalproject/widget/widget_google_button.dart';
import 'package:finalproject/widget/widget_input_field.dart';
import 'package:finalproject/widget/widget_primary_button.dart';
import 'package:flutter/material.dart';

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputField(icon: Icons.email_outlined, hint: "Email Address"),
        InputField(icon: Icons.lock_outline, hint: "Password"),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Text("Forgot Password?"),
        ),
        PrimaryButton(text: "Login"),
        SizedBox(height: 10),
        Text("or continue with"),
        SizedBox(height: 10),
        GoogleButton(),
      ],
    );
  }
}
