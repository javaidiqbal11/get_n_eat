import 'package:flutter/material.dart';
import 'package:getneat/widgets/introone.dart';
import 'package:getneat/widgets/introthree.dart';
import 'package:getneat/widgets/introtwo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
          controller: _controller,
        children: [
          IntroOne(),
          IntroTwo(),
          IntroThree(),   
        ],
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          //color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment(0, 0.70),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                SizedBox(
                  height: 20,
                ),
                buttonFunction(),
                 SizedBox(
                  height: 40,
                ),
                SmoothPageIndicator(
                onDotClicked: (index) => (index)=>_controller.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.easeIn),
                controller: _controller, 
                count: 3,
                effect:  WormEffect(  
                spacing:  8.0,  
                radius:  10.0,
                dotWidth:  12.0,  
                dotHeight:  12.0,  
                dotColor:  Colors.white,  
                activeDotColor: Colors.white,
                paintStyle: PaintingStyle.stroke,
                ),    
                ),
            ],
          ),

        ),
      ),
      ],
      )
    );
  }

  buttonFunction()
{
     return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                ),
              child: IconButton(
              onPressed:() {
                _controller.jumpToPage(2);
              }, 
              icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            )
           ],
        ),
      ),
    );
}

}