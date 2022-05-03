import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Omar Morales',
                textCapitalization: TextCapitalization.words,
                onChanged: ( value ) {
                  print( 'value: $value' );
                },
                validator: ( value ) {
                  if ( value == null ) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  counterText: '3 Caracteres',
                  suffixIcon: Icon( Icons.person ),
                  icon: Icon( Icons.person_pin_circle_outlined ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green
                  //   ),
                  // ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.only( 
                  //     bottomLeft: Radius.circular(10),
                  //     topRight: Radius.circular(10),
                  //   ),
                  // ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}