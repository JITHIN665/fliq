import 'package:fliq/theme/app_theme.dart';
import 'package:fliq/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';
import '../../providers/auth_provider.dart';
import '../chat/chat_list_screen.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  String enteredOtp = "";

  @override
  Widget build(BuildContext context) {
    final phone = ref.watch(phoneProvider);

    return Scaffold(
      appBar: AppBar(leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Enter your verification \ncode",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: appColor(context).primaryText),
              ),
            ),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.black),
                children: [
                  TextSpan(text: "$phone. "),
                  TextSpan(
                    text: "Edit",
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300)),
              ),
              onCompleted: (value) => enteredOtp = value,
            ),
            const SizedBox(height: 24),
            Text(
              "Didn't get anything? No worries, let’s try again.",
              style: TextStyle(fontSize: 12, color: appColor(context).primaryText, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {},
              child: Text("Resent", style: TextStyle(color: appColor(context).secondaryText, fontWeight: FontWeight.w700)),
            ),
            const Spacer(),
            CustomButton(
              title: "Verify",
              backgroundColor: appColor(context).primary!,
              gradientColors: appColor(context).primaryGradient!,
              onTap: () async {
                final success = await ref.read(otpVerifyProvider({'phone': phone, 'otp': enteredOtp}).future);
                if (success) {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const ChatListScreen()), (route) => false);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid OTP")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
