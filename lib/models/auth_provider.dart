import 'package:ellypay/models/agent.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  Agent? agent;

  bool get isSignedIn => agent != null;

  Future<void> signIn() async {
    agent = Agent(
        name: 'Tebandeke Bernard Fred',
        company: 'Bruthen Inc',
        number: 2302153,
        );
    // Save the agent to shared preferences
    final storage = await SharedPreferences.getInstance();
    await storage.setString('agent', agent!.toJson());
    notifyListeners();
  }

  Future<void> signOut() async {
    agent = null;
    // Remove the agent from shared preferences
    final storage = await SharedPreferences.getInstance();
    await storage.remove('agent');
    notifyListeners();
  }

  Future<void> loadAgent() async {
    final storage = await SharedPreferences.getInstance();
    final agentJson = storage.getString('agent');
    if (agentJson != null) {
      agent = Agent.fromJson(agentJson);
      notifyListeners();
    }
  }
}
