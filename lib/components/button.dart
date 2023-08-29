import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final bool isIconRequired;
  final double paddingVertical;
  final double paddingHorizontal;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
    this.icon = Icons.arrow_forward,
    this.isIconRequired = false,
    this.paddingVertical = 20,
    this.paddingHorizontal = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical,
          horizontal: paddingHorizontal,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffbd6367),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            isIconRequired
                ? Icon(
                    icon,
                    color: Colors.white,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
