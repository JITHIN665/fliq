import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color textColor;
  final Widget? leading;
  final List<Color>? gradientColors;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.leading,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    final bool isGradient = gradientColors != null && gradientColors!.length >= 2;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isGradient ? null : backgroundColor,
          gradient: isGradient ? LinearGradient(colors: gradientColors!, begin: Alignment.topCenter, end: Alignment.bottomCenter) : null,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[leading!, const SizedBox(width: 8)],
            Text(title, style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
