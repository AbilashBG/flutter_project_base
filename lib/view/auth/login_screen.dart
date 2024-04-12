import 'package:flutter/material.dart';
import 'package:mvvmbasic/providers/auth_provider.dart';

import '../../providers/utlis/dynamic_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DynamicProvider<AuthProvider>(
      provider: AuthProvider(),
      child: (BuildContext context, provider) {
        return const Scaffold();
      },
    );
  }
}
