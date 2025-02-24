import 'package:flutter/material.dart';

/// Sow a text validation markers:
/// [At least 1 uppercase letter] - defaults to [false]
/// [At least 1 lowercase letter] - defaults to [false]
/// [At least 1 number] - defaults to [false]
/// [At least 1 special character] - defaults to [false]
/// [At least 8 characters] - defaults to [false]
class EJLPasswordValidationMarkers extends StatelessWidget {
  /// Whether the password is at least one uppercase letter.
  final bool isUpperCase;

  /// Whether the password is at least one lowercase letter.
  final bool isLowerCase;

  /// Whether the password is at least one number.
  final bool isNumber;

  /// Whether the password is at least one special character.
  final bool isSpecialChar;

  /// Whether the password is at least 8 characters.
  final bool is8Length;

  /// Constructor of the [EJLPasswordValidationMarkers].
  const EJLPasswordValidationMarkers({
    super.key,
    required this.isUpperCase,
    required this.isLowerCase,
    required this.isNumber,
    required this.isSpecialChar,
    required this.is8Length,
  });

  /// Builds the [EJLPasswordValidationMarkers].
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isUpperCase ? "\u{2713}  1 uppercase" : "\u{2717}  1 uppercase",
                style: TextStyle(
                  color: isUpperCase ? Colors.green : Colors.red,
                ),
              ),
              Text(
                isLowerCase ? "\u{2713}  1 lowercase" : "\u{2717}  1 lowercase",
                style: TextStyle(
                  color: isLowerCase ? Colors.green : Colors.red,
                ),
              ),
              Text(
                isNumber ? "\u{2713}  1 number" : "\u{2717}  1 number",
                style: TextStyle(
                  color: isNumber ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isSpecialChar ? "\u{2713}  1 special character" : "\u{2717}  1 special character",
                style: TextStyle(
                  color: isSpecialChar ? Colors.green : Colors.red,
                ),
              ),
              Text(
                is8Length ? "\u{2713}  8 minimum characters" : "\u{2717}  8 minimum characters",
                style: TextStyle(
                  color: is8Length ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
