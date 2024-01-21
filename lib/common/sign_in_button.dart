import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';
import 'package:reddit_clone/theme/pallete.dart';
import 'package:reddit_clone/utils/constants/constants.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({
    super.key,
  });

  void signIn(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Pallete.greyColor,
            padding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {
          signIn(context, ref);
        },
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
