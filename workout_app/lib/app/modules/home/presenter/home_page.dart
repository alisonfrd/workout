import 'package:flutter/material.dart';
import 'package:workout_app/app/modules/dashboard/dashboard_module.dart';
import 'package:workout_app/app/modules/settings/settings_module.dart';
import 'package:workout_app/app/modules/workout/workout_module.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceAtual = 1;
  final List telas = [
    DashBoardModule(),
    WorkoutModule(),
    SettingsModule(),
  ];

  void onTabTapped(int index) {
    setState(() {
      indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas.elementAt(indiceAtual),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  BottomNavigationBar get bottomNavigationBar {
    return BottomNavigationBar(
      enableFeedback: true,
      backgroundColor: const Color(0xff373A37),
      currentIndex: indiceAtual,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
            ),
            label: 'Treinos',
            tooltip: 'Treinos'),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Home',
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
            tooltip: 'Configurações'),
      ],
    );
  }
}
