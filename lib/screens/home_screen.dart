import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en FLutter'),
        elevation: 1,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon( Icons.access_time_outlined ),
          title: const Text('Nombre de ruta'),
          onTap: () {

            // final route =  MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // );

            // Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');

          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: 10,
      ),
    );
  }
}