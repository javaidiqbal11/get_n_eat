import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({super.key});

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
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
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset("lib/assets/cafe1.png")),
                  SizedBox(height: 50,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
              child: Wrap(
                children: [Text("YOUR FAVORITE RESTAURANTS", 
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
                children: [Text("Discover new restaurants and explore their menus, all from the comfort of your own home.", 
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