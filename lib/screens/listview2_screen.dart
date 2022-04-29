import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Megaman','Metal Gear', 'Super Smash', 'Final Fantasy'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Listview Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
              title: Text( options[i] ),
              trailing: const Icon( Icons.keyboard_double_arrow_right_outlined, color: Colors.greenAccent,),
              onTap: (){
                final game = options[i];
                print(game);
              },
        ),
        separatorBuilder: ( _ , __ ) => const Divider(),
      )
    );
  }
}