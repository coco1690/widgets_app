import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( title: const Text('Tarjetas o Cards'),),

      body: const Placeholder(),
      
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        },     
      )
    );
  }
}