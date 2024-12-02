import 'package:flutter/material.dart';
import 'package:tip/widgets/person_counter.dart';
import 'package:tip/widgets/tipslider.dart';

import 'widgets/billAmount.dart';
import 'widgets/totalper.dart';

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
  int _personCont = 1;
  
  double _tipPercent=0.0;
  double _billTotal=100.0;

  double totalperPerson(){
    return ((_billTotal*_tipPercent)+(_billTotal))/_personCont;
  }
  double totalTip(){
    return ((_billTotal*_tipPercent));
  }

//Methods
  void increment() {
    setState(() {
      _personCont = _personCont + 1;
    });
  }

  void decrement() {
    setState(() {
      if (_personCont > 1) {
        _personCont = _personCont - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
     double total=totalperPerson();
     double totaltip=totalTip();
    final style = theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold);

    return Scaffold(
        appBar: AppBar(
          title: Text('utip'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [
          TotalPerPerson(theme: theme, total: total, style: style),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: theme.colorScheme.primary, width: 2),
                ),
                child: Column(
                  children: [
                    billAmount(
                      billamount: _billTotal.toString(),
                      onChanged: (value) {
                        setState(() {
                          _billTotal=double.parse(value);
                        });
                      },
                    ),
                    //split bill
                    PersonCounter(
                      theme: theme,
                      personCont: _personCont,
                      onDecrement: decrement,
                      onIncrement: increment,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        Text('Tip',style:theme.textTheme.titleSmall,),
                         Text(totaltip.toStringAsFixed(2),style:theme.textTheme.titleSmall,)

                      ],
                    ),

                    //slider text

                    Text('${(_tipPercent*100).round()}%'),
                    slider(tipPercent: _tipPercent, onChanged: (double value) { 
                      setState(() {
                        _tipPercent=value;
                      
                    }); },)
                  ],
                  
                ),
                
),
          )
        ]));
  }
}

