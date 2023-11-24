import 'package:ecomerse_app/components/shoeList.dart';
import 'package:ecomerse_app/models/shoes.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/sliverappbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      drawerScrimColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          MyAppbar(),

          MyShoes()
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
