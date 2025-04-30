import 'package:fliq/theme/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PrivacyTermsText extends StatelessWidget {
  const PrivacyTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: appColor(context).ternaryText, fontSize: 12, fontWeight: FontWeight.w500),
        children: [
          const TextSpan(text: 'By signing up, you agree to our '),
          TextSpan(
            text: 'Terms',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: appColor(context).ternaryText,
              decoration: TextDecoration.underline,
              decorationColor: appColor(context).ternaryText,
              decorationThickness: 2,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: '. See how we use your data in our '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: appColor(context).ternaryText,
              decoration: TextDecoration.underline,
              decorationColor: appColor(context).ternaryText,
              decorationThickness: 2,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
