import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_x_multi_bloc/blocs/camera_use/camera_use_bloc.dart';
import 'package:theta_x_multi_bloc/blocs/video_settings/video_settings_bloc.dart';
import 'package:theta_x_multi_bloc/video_settings.dart';

import 'components/recording_button.dart';
import 'components/settings_button.dart';
import 'components/video_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CameraUseBloc>(create: (context) => CameraUseBloc()),
        BlocProvider<VideoSettingsBloc>(
            create: (context) => VideoSettingsBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: BlocBuilder<CameraUseBloc, CameraUseState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VideoButton(),
                SizedBox(
                  height: 40,
                ),
                RecordingButton(),
                SettingsButton()
              ],
            );
          },
        )),
      ),
    );
  }
}
