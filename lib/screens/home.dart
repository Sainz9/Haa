import 'package:aa/screens/movies.dart';
import 'package:aa/screens/profile.dart';
import 'package:aa/screens/whishlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 2;
  List<Widget> totalPage = [
    Movies(),
    Whishlist(),
    Profile(),
  ];

  void setCurrentIndex(int val) {
    setState(() {
      currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: totalPage[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: setCurrentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Кино'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Дуртай'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Пропайл'),
        ],
      ),
    );
  }
}
