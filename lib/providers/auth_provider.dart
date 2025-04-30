import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());
final phoneProvider = StateProvider<String>((ref) => '');

final otpRequestProvider = FutureProvider.family<bool, String>((ref, phone) async {
  final authService = ref.read(authServiceProvider);
  return await authService.requestOtp(phone);
});

final otpVerifyProvider = FutureProvider.family<bool, Map<String, String>>((ref, params) async {
  final authService = ref.read(authServiceProvider);
  return await authService.verifyOtp(params['phone']!, params['otp']!);
});
