import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:flutter_films/routes/routes.dart';
import 'package:flutter_films/themes/dark.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBntHJq88CEUoU0r8f5azCNPxjAZn4Ukio',
      appId: '1:1046142462000:android:942b3efb5506b3d43fe5f5',
      messagingSenderId: '1046142462000',
      projectId: 'flutter-films320',
      storageBucket: 'flutter-films320.appspot.com'
    ),
  );
  runApp(const AppTheme());
}

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value:AuthService().currentUser,
      child: MaterialApp(
        title: 'КиноГоу',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: routes,
        theme: themeData,
      ),
    );
  }
}
