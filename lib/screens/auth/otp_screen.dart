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
      appBar: AppBar(leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text("Enter OTP sent to $phone", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            Pinput(
              length: 6,
              onCompleted: (value) => enteredOtp = value,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink, minimumSize: const Size.fromHeight(50)),
              onPressed: () async {
                final success = await ref.read(otpVerifyProvider({'phone': phone, 'otp': enteredOtp}).future);
                if (success) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const ChatListScreen()),
                    (route) => false,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid OTP")));
                }
              },
              child: const Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}
