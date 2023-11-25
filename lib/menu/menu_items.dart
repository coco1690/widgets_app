import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subTitlle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
     required this.subTitlle, 
     required this.link,
     required this.icon, 
  });
}

const appMenuitems = <MenuItem> [

  MenuItem(
    title: 'Botones', 
    subTitlle: 'Varios Bontones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subTitlle: 'Un contenedor estilizado', 
    link: '/card', 
    icon: Icons.credit_card
  ),

];