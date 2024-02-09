import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

import 'icon_input_field.dart';

class Country {
  final String name;
  final String short;
  final String code;

  Country({required this.name, required this.short, required this.code});

  @override
  String toString() {
    return '$short ($code)';
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _phone = TextEditingController();
  final _secretWord = TextEditingController();

  final Country _country = Country(name: 'Uganda', short: 'UG', code: '+256');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: Padding(
        padding: Styles.paddingLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: const CircleAvatar(),
              contentPadding: EdgeInsets.zero,
              title: Text(_country.name),
              subtitle: Text(
                _country.toString(),
                style: Styles.greyText,
              ),
              trailing: const Icon(Icons.keyboard_arrow_down_sharp),
            ),
            IconInputField(
              icon: Icons.call,
              prefix: '+256',
              labelText: 'Registered Phone',
              controller: _phone,
            ),
            IconInputField(
              icon: Icons.lock,
              labelText: 'Secret Word',
              controller: _secretWord,
            ),
            Styles.gapY,
            ElevatedButton(
              onPressed: () {},
              style: Styles.buttonStyle,
              child: const Text(
                'Continue',
                style: Styles.buttonText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
