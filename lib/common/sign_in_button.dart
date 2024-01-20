import 'package:flutter/material.dart';
import 'package:reddit_clone/theme/pallete.dart';
import 'package:reddit_clone/utils/constants/constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Pallete.greyColor,
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Constants.google_logo,
              height: 45,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Continue with Google',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ));
  }
}
