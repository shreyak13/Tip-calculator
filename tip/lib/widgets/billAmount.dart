import 'package:flutter/material.dart';

class billAmount extends StatelessWidget {
  const billAmount({
    super.key, required this.billamount, required this.onChanged,
  });

final String billamount;
final ValueChanged<String> onChanged;


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.attach_money),
          labelText: 'bill amount'),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        onChanged(value);
      },
    );
  }
}

