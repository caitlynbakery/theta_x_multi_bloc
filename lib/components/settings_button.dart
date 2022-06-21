import 'package:flutter/material.dart';

import '../video_settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoSettingsScreen()));
            },
            iconSize: 40,
            icon: Icon(color: Colors.black54, Icons.settings))
      ],
    );
  }
}
