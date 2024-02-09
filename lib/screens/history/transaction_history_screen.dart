import 'package:ellypay/models/styles.dart';
import 'package:ellypay/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:ellypay/extensions.dart';

import 'transaction_tile.dart';

final _transactions = [
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 1000,
    date: DateTime(2023, 7, 21, 15, 35),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 50000,
    date: DateTime(2023, 7, 15, 12, 23),
    status: TransactionStatus.failed,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 500,
    date: DateTime(2023, 7, 15, 11, 09),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 500,
    date: DateTime(2023, 7, 15, 11, 04),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 500,
    date: DateTime(2023, 7, 15, 10, 59),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 500,
    date: DateTime(2023, 7, 15, 10, 38),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 500,
    date: DateTime(2023, 7, 15, 10, 35),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 1000,
    date: DateTime(2023, 7, 15, 10, 30),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 1000,
    date: DateTime(2023, 7, 15, 10, 25),
    status: TransactionStatus.successful,
  ),
  Transaction(
    service: 'Money Money Collection',
    description: 'Float Deposit via Airtel Money Uganda',
    amount: 1000,
    date: DateTime(2023, 7, 15, 10, 13),
    status: TransactionStatus.successful,
  ),
];

class TransactionHistoryScreen extends StatelessWidget {
  TransactionHistoryScreen({super.key});

  final DateTime startDate = DateTime(2023, 1, 1);
  final DateTime endDate = DateTime(2023, 10, 31);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text('Transaction History'),
            Styles.gapY,
            Text(
              '${startDate.dateString} to ${endDate.dateString}',
              style: Styles.whiteText.copyWith(fontSize: 12),
            ),
            Styles.gapY,
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.date_range_rounded))
        ],
      ),
      body: ListView.builder(
        itemCount: _transactions.length,
        itemBuilder: (context, index) => TransactionTile(
          transaction: _transactions[index],
        ),
      ),
    );
  }
}
