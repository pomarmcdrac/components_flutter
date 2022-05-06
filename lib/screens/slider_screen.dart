import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: (value) {
              _sliderValue = value;
              setState(() {});
            }
          ),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.pngkey.com/png/full/217-2178998_gamora-in-avengers-alliance-marvel-gamora.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              
            ),
          ),
          
        ],
      ),
    );
  }
}