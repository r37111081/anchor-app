import 'package:flutter/material.dart';
import 'cus_appbar/custom_app_bar.dart'; // 引入自定義的 AppBar
import 'cus_appbar/custom_bottom_navigation_bar.dart'; // 引入自定義的 BottomNavigationBar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(widget.title), // 使用自定義的 AppBar
      body: Center(
        child: Text(
          '目前選擇的頁面索引: $_selectedIndex',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: buildCustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ), // 使用自定義的 BottomNavigationBar
    );
  }
}
