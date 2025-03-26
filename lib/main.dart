import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Parse().initialize(
    'bhuE24HIoHrni6CdlDWvD4nUkVAQivbubtudlXT0', 
    'https://parseapi.back4app.com/', 
    clientKey: 'EGJJB7FR5fMH2v89wHNI64guOzgIgbMcmQcoNgqN', 
    autoSendSessionId: true,
  );
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      home: LoginScreen(),
    );
  }
}
