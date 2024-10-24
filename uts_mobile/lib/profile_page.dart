import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 167, 125, 36), Colors.white],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 60, color: Color.fromARGB(255, 167, 125, 36)),
                ),
                const SizedBox(height: 30),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.person, color: Color.fromARGB(255, 167, 125, 36)),
                          title: const Text('Username'),
                          subtitle: Text(username),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.work, color: Color.fromARGB(255, 167, 125, 36)),
                          title: Text('Role'),
                          subtitle: Text('Administrator'),
                        ),
                        const Divider(),
                        const ListTile(
                          leading: Icon(Icons.email, color: Color.fromARGB(255, 167, 125, 36)),
                          title: Text('Email'),
                          subtitle: Text('angel@example.com'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}