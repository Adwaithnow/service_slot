import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem(
      {super.key,
      required this.isActive,
      required this.onPressed,
      required this.label,
      required this.icon});
  final bool isActive;
  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive ? Colors.blue : Colors.black,
            ),
            Text(
              label,
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(color: isActive ? Colors.blue : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
