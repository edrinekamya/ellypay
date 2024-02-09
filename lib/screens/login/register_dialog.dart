import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class RegisterDialog extends StatelessWidget {
  const RegisterDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape: Styles.cardShape,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: Styles.primaryText,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Call Now',
                style: Styles.primaryText,
              ),
            )
          ],
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'To register as an agent, please reach us on',
                ),
                Styles.gapY,
                Styles.gapY,
                Text(
                  '+256 704 878 224',
                  style: Styles.boldText,
                ),
                Styles.gapY,
                Styles.gapY,
                const Text(
                    "We'll be available to support you. Thank you for choosing EllyPay")
              ],
            ),
          ),
        ),
      ),
      child: const Text('New Here? Register'),
    );
  }
}
