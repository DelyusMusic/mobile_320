import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/model.dart';
import 'package:flutter_films/pages/auth.dart';
import 'package:flutter_films/pages/home.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;

    return check ? const HomePage() : const AuthPage();
  }
}
