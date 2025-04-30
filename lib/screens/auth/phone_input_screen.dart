import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../providers/auth_provider.dart';
import 'otp_screen.dart';

class PhoneInputScreen extends ConsumerStatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  ConsumerState<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends ConsumerState<PhoneInputScreen> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text("Enter your phone number", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            InternationalPhoneNumberInput(
              onInputChanged: (num) {
                number = num;
              },
              selectorConfig: const SelectorConfig(selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
              textFieldController: controller,
              initialValue: number,
              inputDecoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink, minimumSize: const Size.fromHeight(50)),
              onPressed: () async {
                ref.read(phoneProvider.notifier).state = number.phoneNumber!;
                final sent = await ref.read(otpRequestProvider(number.phoneNumber!).future);
                if (sent) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const OtpScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("OTP failed")));
                }
              },
              child: const Text("Send OTP"),
            )
          ],
        ),
      ),
    );
  }
}
