import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceMetaService {
  static Future<Map<String, dynamic>> getDeviceMeta() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final android = await deviceInfo.androidInfo;
      return {
        "type": "Android",
        "device-name": android.model,
        "device-os-version": android.version.release,
        "browser": null,
        "browser_version": null,
        "user-agent": null,
        "screen_resolution": null,
        "language": null,
      };
    } else if (Platform.isIOS) {
      final ios = await deviceInfo.iosInfo;
      return {
        "type": "iOS",
        "device-name": ios.name,
        "device-os-version": ios.systemVersion,
        "browser": null,
        "browser_version": null,
        "user-agent": null,
        "screen_resolution": null,
        "language": null,
      };
    }

    return {
      "type": "Unknown",
      "device-name": null,
      "device-os-version": null,
      "browser": null,
      "browser_version": null,
      "user-agent": null,
      "screen_resolution": null,
      "language": null,
    };
  }
}
