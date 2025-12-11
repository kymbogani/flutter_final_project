import 'package:finalproject/auth/auth_wrapper.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const JobPoolApp());
}

class JobPoolApp extends StatelessWidget {
  const JobPoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthWrapper(),
    );
  }
}
