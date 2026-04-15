import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {
  bool isvisible = false;
  @override
  void initState() {
    super.initState();
    //fade in
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isvisible = true;
      });
    });
    //fade out
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isvisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: isvisible ? 1 : 0,
            duration: Duration(seconds: 2),
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Animate(
            effects: [
              FadeEffect(duration: Duration(seconds: 6), begin: 1, end: 0),
              SlideEffect(
                begin: Offset(0, 0.5),
                end: Offset(0, 0),
                duration: Duration(seconds: 2),
              ),
              ThenEffect(delay: Duration(seconds: 2)),
            ],
            child: Text(
              'R e c i p e s',
              style: GoogleFonts.playwriteHrLijeva(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
