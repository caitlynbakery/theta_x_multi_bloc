import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_x_multi_bloc/blocs/video_settings/video_settings_bloc.dart';

class VideoSettingsScreen extends StatelessWidget {
  const VideoSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoSettingsBloc, VideoSettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text('Video Settings'),
          ),
          body: Column(children: [
            MaterialButton(
              onPressed: () {
                context.read<VideoSettingsBloc>().add(Video8K2FPSEvent());
              },
              child: Text(
                '8K 2fps',
                style: TextStyle(
                    fontFamily: 'LemonMilk', fontSize: 20, color: Colors.green),
              ),
            )
          ]),
        );
      },
    );
  }
}
