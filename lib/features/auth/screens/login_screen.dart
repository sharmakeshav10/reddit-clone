import 'package:flutter/material.dart';
import 'package:reddit_clone/common/sign_in_button.dart';
import 'package:reddit_clone/utils/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.reddit_logo,
          width: 40,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Dive into anything",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              Constants.reddit_emote,
              height: 400,
            ),
            SizedBox(
              height: 25,
            ),
            SignInButton()
          ],
        ),
      ),
    );
  }
}
