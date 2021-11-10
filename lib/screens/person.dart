import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/add6.png", fit: BoxFit.cover, height: 400),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "I am a professional 🔥Facebook And 🔥Google Ads Campaigner. I work on Fiverr. I provide Social Media And Search Engine Marketing Services. If you need any Facebook or Google ads services, you can contact me at @hredaysagar@gmail.com.#DigitalMarketer#SocialMediaMarketer#FacebookMarketing#Google Ads Expert",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 2,
                    color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
