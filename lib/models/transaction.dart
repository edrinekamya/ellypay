enum TransactionStatus { successful, failed }

class Transaction {
  final String service;
  final String description;
  final double amount;
  final DateTime date;
  final TransactionStatus status;

  Transaction({
    required this.service,
    required this.description,
    required this.amount,
    required this.date,
    required this.status,
  });
}
