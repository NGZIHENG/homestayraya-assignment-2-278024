import 'package:flutter/material.dart';
import '../model/user.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homestay Raya'),
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
      drawer: Drawer(
          child: ListView(
            children:[
                UserAccountsDrawerHeader(
                  accountEmail: const Text('ziheng467@gmail.com'), 
                  accountName: Row(
                    children:<Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            Icons.check,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('user'),
                          Text('@user')
                        ]
                      )
                    ]
                  ),
                
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ]
          ),
        ),
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