import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTip',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Utip(),
    );
  }
}

class Utip extends StatefulWidget {
  const Utip({super.key});

  @override
  State<Utip> createState() => _UtipState();
}

class _UtipState extends State<Utip> {
  @override
  Widget build(BuildContext context) {
    var    theme= Theme.of(context);
    final style =theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold
    );

    
    return  Scaffold(

      appBar: AppBar(
        title: Text('utip'),
        

      ),

      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
     
        children: [
           Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: Colors.deepPurple, 
            borderRadius: BorderRadius.circular(10),
            border:Border.all( width: 1.0)),
            
            child: Column(
              children: [
                 Text('total per person',style: theme.textTheme.displaySmall
                
                  , ),
                 Text('\$20', style: style.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontSize: theme.textTheme.displaySmall?.fontSize
                 ),),

              ],
            )),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container (
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 2
                  ),
                  
                  
                ),
                child:  Column(
                  children: [
                    TextField(
                      decoration:const  InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.attach_money),
                       labelText: 'bill amount'),
                      keyboardType: TextInputType.number,
                      onChanged: (String value) {
                      
                      },
                    ),
                    //split bill
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                         
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                                             Text("Split",style:theme.textTheme.titleMedium,)
                          ]),

                          Row(
                            children: [
                          IconButton(color: theme.colorScheme.primary, onPressed: ()=>{}, icon: const Icon(Icons.remove)),
                        Text("4",style: theme.textTheme.titleMedium,),
                         IconButton(color: theme.colorScheme.primary , onPressed:()=>{}, icon:  const Icon(Icons.add))
                      ],
                          )
                       ]
                       
                     ),
                      
                        
                      ],
                    )
      
                ),
              ),
            ])
        

      );
    
  }
}