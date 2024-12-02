   import 'package:flutter/material.dart';

class PersonCounter extends StatelessWidget {
  const PersonCounter({
    super.key,
    required this.theme,
    required int personCont, required this.onDecrement, required this.onIncrement,
  }) : _personCont = personCont;

  final ThemeData theme;
  final int _personCont;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;


  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
        
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
                            Text("Split",style:theme.textTheme.titleMedium,)
         ]),
    
         Row(
           children: [
         IconButton(color: theme.colorScheme.primary, onPressed: onDecrement, icon: const Icon(Icons.remove)),
       Text("$_personCont",style: theme.textTheme.titleMedium,),
        IconButton(color: theme.colorScheme.primary , onPressed:onIncrement, icon:  const Icon(Icons.add))

        // Tip selection


     ],
         )
         
      ]
      
    );
  }
}