import 'package:fliq/theme/app_theme.dart';
import 'package:fliq/widgets/custom_button.dart';
import 'package:fliq/widgets/custom_phone_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/auth_provider.dart';
import 'otp_screen.dart';

class PhoneInputScreen extends ConsumerStatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  ConsumerState<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends ConsumerState<PhoneInputScreen> {
  String fullPhoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Enter your phone \nnumber",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: appColor(context).primaryText),
              ),
            ),
            const SizedBox(height: 24),
            CustomPhoneInput(
              onChanged: (value) {
                fullPhoneNumber = value;
              },
            ),
            const SizedBox(height: 8),
            Text(
              "Fliq will send you a text with a verification code.",
              style: TextStyle(fontSize: 12, color: appColor(context).primaryText, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            CustomButton(
              title: "Next",
              backgroundColor: appColor(context).primary!,
              gradientColors: appColor(context).primaryGradient!,
              onTap: () async {
                ref.read(phoneProvider.notifier).state = fullPhoneNumber;
                final sent = await ref.read(otpRequestProvider(fullPhoneNumber).future);
                if (sent) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const OtpScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("OTP failed")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
