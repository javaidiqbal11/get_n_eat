import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroTwo extends StatefulWidget {
  const IntroTwo({super.key});

  @override
  State<IntroTwo> createState() => _IntroTwoState();
}

class _IntroTwoState extends State<IntroTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
           color: const Color.fromARGB(255, 19, 24, 27),
          image: DecorationImage(
          image: AssetImage('lib/assets/background.png'),
          fit: BoxFit.cover,
                  ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset("lib/assets/character.png")),
                  SizedBox(height: 20,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
              child: Wrap(
                children: [Text("DELIVER HOT OR COLD FAST", 
                style: TextStyle(
                  color: Colors.yellow, 
                  fontSize: 28, 
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,),]
              ))),
              SizedBox(height: 20,),
              Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
              child: Wrap(
                children: [Text("Get your food delivered quickly and at the perfect temperature, no matter if it's hot or cold.", 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 18, 
                  //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,),]
              ))),
            ],
          ),
          );
  }
}