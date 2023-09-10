import 'package:flutter/material.dart';
import 'package:pingui_app/services/authentication_service.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Login'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  // validator: (input) => input == null || input.isEmpty
                  //     ? 'Please type an email'
                  //     : null,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                const Spacer(),
                FilledButton(
                  onPressed: login,
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ));
  }

  void login() {
    final formState = _formKey.currentState;

    context
        .read<AuthenticationService>()
        .signIn(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim())
        .then((value) => print(value))
        .catchError((error) => print(error));
  }
}
