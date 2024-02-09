import 'dart:convert';

class Agent {
  final String name;
  final String company;
  final int number;

  Agent({
    required this.name,
    required this.company,
    required this.number,
  });

  // Convert Agent object to JSON
  String toJson() =>
      json.encode({'name': name, 'company': company, 'number': number});

  // Convert JSON to Agent object
  static Agent fromJson(String source) {
    final data = json.decode(source);
    return Agent(
      name: data['name'],
      company: data['company'],
      number: data['number'],
    );
  }
}
