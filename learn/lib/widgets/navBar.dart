import 'package:flutter/material.dart';

class LearnNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final List<Map<String, dynamic>> navItems;

  LearnNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavBarItems = navItems.map((item) {
      String iconName = item['name'].toString().toLowerCase();
      return BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/appIcons/icon-$iconName-${selectedIndex == navItems.indexOf(item) ? 'select' : 'default'}.png',
          height: 24,
        ),
        label: item['name'] as String,
      );
    }).toList();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // Define a cor do fundo da NavBar
        borderRadius: BorderRadius.all(Radius.circular(14)), // Bordas arredondadas
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.0,
            blurRadius: 10.0,
            offset: Offset(0, -1), // Posição da sombra
          ),
        ],
      ),
      margin: const EdgeInsets.all(10), // Margem ao redor da NavBar
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(14)), // Bordas arredondadas
        child: BottomNavigationBar(
          items: bottomNavBarItems,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: Colors.white, // Cor de fundo da NavBar
          selectedItemColor: const Color(0xFF3034AD), // Cor do ícone selecionado
          unselectedItemColor: const Color(0xFF49454F), // Cor do ícone não selecionado
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: const TextStyle(color: Color(0xFF3034AD),fontSize: 12, fontFamily: "Fieldwork-Geo", fontWeight: FontWeight.w400), 
          unselectedLabelStyle: const TextStyle(color: Color(0xFF49454F), fontSize: 12, fontFamily: "Fieldwork-Geo", fontWeight: FontWeight.w400), 
          type: BottomNavigationBarType.fixed,
          elevation: 0,
        ),
      ),
    );
  }
}
