import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  const slider({
    super.key,
    required double tipPercent, required this.onChanged,
  }) : _tipPercent = tipPercent;

  final double _tipPercent;
  final ValueChanged <double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(value: _tipPercent,min: 0.0,max: 0.5,label: '${(_tipPercent*100).round()}',divisions: 5,onChanged: onChanged,
    //onChanged: (value){
    //  setState(() {
      //   _tipPercent=value;
      //}
      );
     
    }
  }

