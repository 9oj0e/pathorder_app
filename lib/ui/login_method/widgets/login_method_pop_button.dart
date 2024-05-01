import 'package:flutter/material.dart';

class LoginMethodPopButton extends StatelessWidget {
  const LoginMethodPopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      left: 15,
      child: IconButton(
        icon: Icon(Icons.close, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
