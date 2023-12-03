import 'package:flutter/material.dart';

class CustomBottomNaviation extends StatelessWidget {
  const CustomBottomNaviation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedFontSize: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, color: Colors.black),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, color: Colors.black,),
          label: 'Mis citas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle, color: Colors.black,),
          label: 'Reservar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz, color: Colors.black,),
          label: 'Mas',
        )
      ],
    );
  }
}
