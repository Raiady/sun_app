import 'package:flutter/material.dart';

class UserProfileEdit extends StatelessWidget {
  const UserProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          TextFormField()
        ],
      ),
    );
  }
}
