import 'package:ellypay/extensions.dart';
import 'package:ellypay/models/styles.dart';
import 'package:ellypay/widgets/card_tile.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo(
      {super.key,
      required this.title,
      required this.totalIn,
      required this.totalOut,
      required this.balance});

  final String title;
  final double totalIn;
  final double totalOut;
  final double balance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.padding,
      child: Column(
        children: [
          Text(
            title,
            style: Styles.boldText,
          ),
          Styles.gapY,
          CardTile(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total In',
                      style: Styles.smallBoldText,
                    ),
                    Text('+${totalIn.formattedWithCommas} UGX',
                        style: Styles.greenText),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Out',
                      style: Styles.smallBoldText,
                    ),
                    Text(
                      '-${totalOut.formattedWithCommas} UGX',
                      style: Styles.redText,
                    ),
                  ],
                )
              ],
            ),
          ),
          Styles.gapY,
          CardTile(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Balance',
                      style: Styles.smallBoldText,
                    ),
                    Text(
                      'Statement',
                      style: Styles.smallBoldText,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UGX. ${balance.formattedWithCommas}',
                      style: Styles.primaryText,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.timeline,
                          color: Styles.brandColor,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
