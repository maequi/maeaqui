import 'package:flutter/material.dart';
import 'package:maeaqui/theme/theme_manager.dart';

class ThemeToggleSwitch extends StatelessWidget {
  const ThemeToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: themeManager,
      builder: (context, isBlue, child) {
        return GestureDetector(
          onTap: () => themeManager.toggleTheme(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 60,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isBlue ? Colors.blue.withOpacity(0.3) : Colors.pink.withOpacity(0.3),
            ),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              alignment: isBlue ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                width: 28,
                height: 28,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isBlue ? Colors.blue : Colors.pink,
                ),
                child: Icon(
                  isBlue ? Icons.male : Icons.female,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}