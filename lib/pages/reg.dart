// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_films/database/collections/users_collection.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:toast/toast.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passCheckController = TextEditingController();
  AuthService authService = AuthService();
  UsersCollection userCollection = UsersCollection();
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Создайте аккаунт',
              style: TextStyle(
                color: Color(0xffed6b5b),
              ),
              textScaler: TextScaler.linear(2),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: nameController,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Никнейм',
                  hintText: 'Никнейм',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: emailController,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Email',
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: passwordController,
                obscureText: !visibility,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: !visibility
                        ? const Icon(
                            Icons.visibility,
                            color: Color(0xffed6b5b),
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Color(0xffed6b5b),
                          ),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Пароль',
                  hintText: 'Пароль',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: passCheckController,
                obscureText: !visibility,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: !visibility
                        ? const Icon(
                            Icons.visibility,
                            color: Color(0xffed6b5b),
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Color(0xffed6b5b),
                          ),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Повторите пароль',
                  hintText: 'Повторите пароль',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () async {
                  if (nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      passCheckController.text.isEmpty) {
                    Toast.show('Заполните все поля!');
                  } else {
                    if (passwordController.text == passCheckController.text) {
                      var user = await authService.singUp(
                          emailController.text, passwordController.text);
                      if (user != null) {
                        showDialog(
                            context: context,
                            builder: (context) => const Center(
                                  child: CircularProgressIndicator(),
                                ));
                        await userCollection.addUserCollection(
                          user.id!,
                          emailController.text,
                          nameController.text,
                          '',
                          passwordController.text,
                        );
                        Navigator.popAndPushNamed(context, '/');
                      } else {
                        Toast.show('Проверьте правильность данных');
                      }
                    } else {
                      Toast.show('Пароли не совпадают');
                    }
                  }
                },
                child: const Text('Создать'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Зарегистрированы?",
                  style: TextStyle(color: Colors.white60),
                ),
                TextButton(
                  onPressed: () => Navigator.popAndPushNamed(context, '/'),
                  child: const Text(
                    'Авторизоваться',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
