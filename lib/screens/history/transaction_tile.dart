import 'package:ellypay/extensions.dart';
import 'package:ellypay/models/styles.dart';
import 'package:ellypay/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.service,
                  style: Styles.smallBoldText,
                ),
                Text(
                  transaction.description,
                  style: Styles.greyText,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  transaction.status.name.toUpperCase(),
                  style: transaction.status == TransactionStatus.failed
                      ? Styles.redText
                      : Styles.greenText,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 32.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${transaction.amount.formattedWithCommas} UGX',
                style: Styles.smallBoldText,
              ),
              Text(
                '${transaction.date.dateString} ${transaction.date.timeString}',
                style: Styles.greyText,
              )
            ],
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
    );
  }
}
