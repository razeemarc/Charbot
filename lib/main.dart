import 'package:flutter/material.dart';
import 'chatbot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _navigateToChatScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          // Your main content here
          // Add any widgets you want to be behind the button

          Positioned(
            bottom: 20.0, // Adjust this value to change the button's vertical position
            right: 20.0, // Adjust this value to change the button's horizontal position
            child: FloatingActionButton(
              onPressed: () {
                _navigateToChatScreen(context);
              },
              child: const Icon(Icons.chat, color: Colors.white), // Change the icon color here
              backgroundColor: const Color(0xFFE1A308), // Change the background color here
            ),
          ),
        ],
      ),
    );
  }
}
