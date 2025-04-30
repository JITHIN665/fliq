import 'package:fliq/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class CustomPhoneInput extends StatefulWidget {
  final Function(String fullPhoneNumber) onChanged;
  final TextEditingController? controller;

  const CustomPhoneInput({super.key, required this.onChanged, this.controller});

  @override
  State<CustomPhoneInput> createState() => _CustomPhoneInputState();
}

class _CustomPhoneInputState extends State<CustomPhoneInput> {
  late Country _selectedCountry;
  late TextEditingController _localController;

  @override
  void initState() {
    super.initState();
    _selectedCountry = Country(
      phoneCode: '91',
      countryCode: 'IN',
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: 'India',
      example: '9123456789',
      displayName: 'India',
      displayNameNoCountryCode: 'India',
      e164Key: '',
    );

    _localController = widget.controller ?? TextEditingController();
  }

  void _openCountryPicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() => _selectedCountry = country);
        _notifyChange();
      },
    );
  }

  void _notifyChange() {
    final fullNumber = '+${_selectedCountry.phoneCode}${_localController.text.trim()}';
    widget.onChanged(fullNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white, border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: [
          Image.asset("assets/icon/phone.png", height: 20),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: _openCountryPicker,
            child: Row(
              children: [
                Text('+${_selectedCountry.phoneCode}', style: TextStyle(fontSize: 16, color: appColor(context).primaryText)),
                const SizedBox(width: 4),
                const Icon(Icons.arrow_drop_down_outlined, size: 30, color: Colors.grey),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(width: 1, height: 30, color: Colors.grey.shade300),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _localController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(border: InputBorder.none, hintText: 'Enter Number'),
              onChanged: (_) => _notifyChange(),
            ),
          ),
        ],
      ),
    );
  }
}
