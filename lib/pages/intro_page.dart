import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Image.asset(
                  'lib/images/Nike.png',
                  height: 240,
                  width: 220,
                ),
              ),
            ),
        
            const SizedBox(height: 48),
        
            // Title
            const Text(
              'Just Do It.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
        
            const SizedBox(height: 48),

            // Sub Title
            const Text(
              'Brand new sneakers and custom kicks with premium quality',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48),
        
            // Start now button
            GestureDetector(
              onTap:() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}