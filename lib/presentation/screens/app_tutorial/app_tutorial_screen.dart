import 'package:flutter/material.dart';


class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar( 
        title:const  Text('App-tutorial'),
      ),

      body: const Placeholder(),

    );
  }
}