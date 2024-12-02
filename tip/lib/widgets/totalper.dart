import 'package:flutter/material.dart';

class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.total,
    required this.style,
  });

  final ThemeData theme;
  final double total;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1.0)),
          child: Column(
            children: [
              Text(
                'total per person',
                style: theme.textTheme.displaySmall,
              ),
              Text(
                total.toStringAsFixed(2),
                style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displaySmall?.fontSize),
              ),
            ],
          )),
    );
  }
}

