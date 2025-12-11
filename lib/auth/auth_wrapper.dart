import 'package:finalproject/pages/login_page.dart';
import 'package:finalproject/pages/register_page.dart';
import 'package:finalproject/widget/widget_tab_button.dart';
import 'package:finalproject/theme/theme_textstyle.dart';
import 'package:finalproject/widget/background_widget.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Logo
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white24,
                ),
              ),

              const SizedBox(height: 15),
              const Text("JobPool", style: AppTextStyles.heading),
              const Text("Connect. Work. Earn.", style: AppTextStyles.subtitle),

              const SizedBox(height: 25),

              // Auth Card
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AuthTabButton(
                            text: "Login",
                            isActive: showLogin,
                            onTap: () => setState(() => showLogin = true),
                          ),
                        ),
                        Expanded(
                          child: AuthTabButton(
                            text: "Register",
                            isActive: !showLogin,
                            onTap: () => setState(() => showLogin = false),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    showLogin ? const LoginPageUI() : const RegisterPageUI(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
