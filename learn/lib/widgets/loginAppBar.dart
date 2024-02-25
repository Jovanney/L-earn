import 'package:flutter/material.dart';


class LoginAppBar extends StatelessWidget {
  const LoginAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/images/appImages/icon.png', height: 40),
          const SizedBox(width: 8),
          const Text(
            'Coinny',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF262B91),
              fontFamily: "Fieldwork-Geo",
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      );
  }
}