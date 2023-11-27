import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const cardList = <Map<String, dynamic>> [
  { 'elevation': 0.0, 'label': 'elevation 0' },
  { 'elevation': 1.0, 'label': 'elevation 1' },
  { 'elevation': 2.0, 'label': 'elevation 2' },
  { 'elevation': 3.0, 'label': 'elevation 3' },
  { 'elevation': 4.0, 'label': 'elevation 4' },
  { 'elevation': 5.0, 'label': 'elevation 5' },
  ];

class CardScreen extends StatelessWidget {

  
  const CardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( title: const Text('Tarjetas o Cards'),),

      body:  _CustomCardsViews(),
      
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        },     
      )
    );
  }
}

class _CustomCardsViews extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
      child: Column(
        children: [
          ...cardList.map((card) => 
            _CardType1(label: card['label'] , elevation: card['elevation'])),

          ...cardList.map((card) => 
            _CardType2(label: card['label'] , elevation: card['elevation'])),

          ...cardList.map((card) => 
            _CardType3(label: card['label'] , elevation: card['elevation'])),

          ...cardList.map((card) => 
            _CardType4(label: card['label'] , elevation: card['elevation'])),

          const SizedBox(height: 60,)
        ]
      ),
    );
  }
}
//  TARJETA CON ELEVATION SOLA
class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({
    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed:(){},
               )
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text(label)
            )

          ],
        ),
      ),
    );
  }
}

// TARJETA CON BORDE Y OUTLINE
class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({
    required this.label, 
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      shape:  RoundedRectangleBorder(
        borderRadius:const  BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        ),
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed:(){},
               )
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - outline')
            )

          ],
        ),
      ),
    );
  }
}

// TARJETA CON SURFACE
class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType3({
    required this.label, 
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceVariant,

      shape: const  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        
      ),

      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed:(){},
               )
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - surface')
            )

          ],
        ),
      ),
    );
  }
}

// TARJETA CON IMAGE
class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType4({
    required this.label, 
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {

  
    return Card(

      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(

        children: [

          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
            
          ),

          Align(
            alignment: Alignment.topRight,

            child: Container(

              decoration: const BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20) )
              ),

              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed:(){},
               ),
            )
          ),
        ],
      ),
    );
  }
}
