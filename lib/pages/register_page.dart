import 'package:finalproject/widget/widget_google_button.dart';
import 'package:finalproject/widget/widget_input_field.dart';
import 'package:finalproject/widget/widget_primary_button.dart';
import 'package:flutter/material.dart';
class RegisterPageUI extends StatelessWidget {
  const RegisterPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputField(icon: Icons.person_outline, hint: "Full Name"),
        InputField(icon: Icons.email_outlined, hint: "Email Address"),
        InputField(icon: Icons.phone_outlined, hint: "Mobile Number"),
        InputField(icon: Icons.lock_outline, hint: "Password"),
        SizedBox(height: 10),
        PrimaryButton(text: "Create Account"),
        SizedBox(height: 10),
        Text("or continue with"),
        SizedBox(height: 10),
        GoogleButton(),
      ],
    );
  }
}
