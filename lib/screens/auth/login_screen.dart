import 'package:fliq/theme/app_theme.dart';
import 'package:fliq/widgets/custom_button.dart';
import 'package:fliq/widgets/privacy_terms_text.dart';
import 'package:flutter/material.dart';
import 'phone_input_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/image.png', fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                Image.asset('assets/icon/fliq.png', height: 50),
                const SizedBox(height: 16),
                Text(
                  "Connect. Meet. Love.\nWith Fliq Dating",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: appColor(context).ternaryText, fontSize: 25, fontWeight: FontWeight.w900),
                ),
                Spacer(),
                CustomButton(
                  title: "Sign in with Google",
                  backgroundColor: appColor(context).ternaryText!,
                  textColor: appColor(context).primaryText!,
                  leading: Image.asset('assets/icon/google.png', height: 20),
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                CustomButton(
                  title: "Sign in with Facebook",
                  backgroundColor: appColor(context).text!,
                  leading: Image.asset('assets/icon/fb.png', height: 20),
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                CustomButton(
                  title: "Sign in with phone number",
                  backgroundColor: appColor(context).primary!,
                  leading: Image.asset('assets/icon/call.png', height: 20),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const PhoneInputScreen()));
                  },
                ),
                const SizedBox(height: 24),
                PrivacyTermsText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
