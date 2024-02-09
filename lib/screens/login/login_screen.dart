import 'package:ellypay/models/auth_provider.dart';
import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../widgets/button.dart';
import '../../widgets/logo.dart';
import 'register_dialog.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _phoneNumber = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              Styles.gapY,
              Styles.gapY,
              Text(
                'Welcome to EllyPay',
                style: Styles.primaryText,
              ),
              const Text(
                'Login to continue',
                style: Styles.greyText,
              ),
              Styles.gapY,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: _phoneNumber,
                      validator: (String? value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^256\d{9}$').hasMatch(value)) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: Styles.greyText),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: _password,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'Password', labelStyle: Styles.greyText),
                    ),
                  ],
                ),
              ),
              Styles.gapY,
              Styles.gapY,
              Button(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<AuthProvider>().signIn();
                    context.go('/');
                  }
                },
                title: 'LOGIN',
              ),
              Styles.gapY,
              TextButton(
                onPressed: () => context.push('/reset-password'),
                child: const Text(
                  'Forgot password? Reset here',
                ),
              ),
              Styles.gapY,
              const RegisterDialog(),
            ],
          ),
        ),
      ),
    );
  }
}
