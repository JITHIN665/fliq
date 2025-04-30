import 'package:fliq/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const SearchBarWidget({super.key, this.hintText = 'Search', required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(98), border: Border.all(color: appColor(context).background!.withOpacity(0.6))),
      child: Row(
        children: [
          Expanded(child: TextField(onChanged: onChanged, decoration: InputDecoration(hintText: hintText, border: InputBorder.none))),
          Image.asset("assets/icon/search.png", height: 20),
        ],
      ),
    );
  }
}
