import 'package:flutter/material.dart';

void main() {
  runApp(const UniChatApp());
}

class UniChatApp extends StatelessWidget {
  const UniChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniChat 🥷',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1976D2),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<String> _titles = [
    '💬 Chats / UniChat',
    'Channels',
    '🥷 AI Assistant - Ninja Mode',
    'Study Tools',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniChat 🥷'),
        foregroundColor: const Color(0xFF1976D2),
      ),
      body: Center(
        child: Text(
          _titles[_selectedIndex],
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign_outlined),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Text(
              '🥷',
              style: TextStyle(fontSize: 24),
            ),
            label: 'AI Assistant',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Study Tools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
