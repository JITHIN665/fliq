import '../core/constants.dart';
import '../support/base_api_service.dart';
import 'shared_pref_service.dart';

class AuthService extends BaseApiService {
  final _storage = StorageService();
  

  ///
  ///Otp Request
  ///
  Future<bool> requestOtp(String phone) async {
    final data = {
      "data": {
        "type": "registration_otp_codes",
        "attributes": {"phone": phone},
      },
    };

    try {
      await post('/auth/registration-otp-codes/actions/phone/send-otp', data);
      return true;
    } catch (e) {
      print("OTP Request Error: $e");
      return false;
    }
  }
  

  ///
  ///Verify otp
  ///
  Future<bool> verifyOtp(String phone, String otp) async {
    final data = {
      "data": {
        "type": "registration-otp-codes",
        "attributes": {"phone": phone, "otp": int.parse(otp), "device_meta": defaultDeviceMeta},
      },
    };
    try {
      final response = await post('/auth/registration-otp-codes/actions/phone/verify-otp', data);
      final token = response.data['data']['attributes']['auth_status']['access_token'];
      if (token != null) {
        await _storage.saveToken(token);
        return true;
      }
      return false;
    } catch (e) {
      print("OTP Verify Error: $e");
      return false;
    }
  }
  ///
  ///To get Token
  ///
  Future<String?> getSavedToken() => _storage.getToken();

  ///
  ///Remove Token
  ///
  Future<void> clearSavedToken() => _storage.clearToken();
}
