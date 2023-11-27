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

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Botones', 
    subTitlle: 'Varios Bontones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subTitlle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Animated', 
    subTitlle: 'Animaciones', 
    link: '/animated', 
    icon: Icons.animation
  ),

  MenuItem(
    title: 'App-Tutorial', 
    subTitlle: 'Tutoriales', 
    link: '/apptutorial', 
    icon: Icons.tungsten_rounded
  ),

  MenuItem(
    title: 'Infinite Scroll', 
    subTitlle: 'Scroll infinito', 
    link: '/infinitescroll', 
    icon: Icons.insert_drive_file_outlined
  ),

  MenuItem(
    title: 'Progress', 
    subTitlle: 'Algo Progrsivo', 
    link: '/progress', 
    icon: Icons.precision_manufacturing
  ),

  MenuItem(
    title: 'SnackBar', 
    subTitlle: 'USnackBar personalizado', 
    link: '/snackbar', 
    icon: Icons.snapchat_rounded
  ),

  MenuItem(
    title: 'Ui - Controls', 
    subTitlle: 'Controles de diseño', 
    link: '/uicontrols', 
    icon: Icons.construction_rounded
  ),

];