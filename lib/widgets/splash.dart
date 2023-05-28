import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _navigationtohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => IntroScreen()));
    QR.to('/intro');
  }

  @override
  void initState() {
    super.initState();
    _navigationtohome();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 24, 27),
                image: DecorationImage(
                  image: AssetImage('lib/assets/background.png'),
                  fit: BoxFit.cover,
                  ),
                  ),
              
              child:
              Center(
                child: Container(
                margin: EdgeInsets.all(100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("lib/assets/logo.png"),
                  ],
                ) ,
            ),
              ),
            ),
            ],
        )
        ),
      
    );
}
}