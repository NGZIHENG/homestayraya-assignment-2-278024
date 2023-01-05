import 'package:flutter/material.dart';
import '../model/user.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';
import 'shared/mainmenu.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),
      actions:[
        IconButton(
          onPressed: registrationScreen,
          icon: const Icon(Icons.app_registration)
          ),
        IconButton(
          onPressed: loginScreen,
          icon: const Icon(Icons.login)
          )
        ]
      ),
      body: const Center(
        child: Text("Main Page")
      ),
      drawer: MainMenuWidget(user: widget.user),
    );
  }
  
  void registrationScreen() {
    Navigator.push(context,
        MaterialPageRoute(builder: (content) => const RegistrationScreen())
      );
  }

  void loginScreen() {
    Navigator.push(context,
        MaterialPageRoute(builder: (content) => const LoginScreen())
      );
  }
}