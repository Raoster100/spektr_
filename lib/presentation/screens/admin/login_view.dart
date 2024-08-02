import 'package:flutter/material.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:spektr/navigation/app_router.dart';
import 'package:spektr/presentation/theme/app_typography.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../app/app.dart';

@RoutePage(name: 'login')
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void goToAdmin() {
    if (loginController.text == '123' && passwordController.text == '123') {
      App.isAuthorized = true;
      // App.router.navigate(Admin());
    }
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 400,
                    child: TextFormField(
                      controller: loginController,
                      decoration: InputDecoration(hintText: 'Логин'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 400,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(hintText: 'Пароль'),
                      obscureText: true,
                    ),
                  ),
                ),
                Center(
                  child: CupertinoButton(
                    onPressed: () {
                      goToAdmin();
                    },
                    child: Text('Войти'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
