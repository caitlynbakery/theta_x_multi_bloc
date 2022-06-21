import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_x_multi_bloc/blocs/camera_use/camera_use_bloc.dart';
import 'package:theta_x_multi_bloc/blocs/video_settings/video_settings_bloc.dart';
import 'package:theta_x_multi_bloc/video_settings.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.read<CameraUseBloc>().add(VideoModeEvent());
                        },
                        iconSize: 40,
                        icon: Icon(
                            color: Colors.black54, Icons.video_camera_front))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    !state.isRecording
                        ? IconButton(
                            onPressed: () {
                              context
                                  .read<CameraUseBloc>()
                                  .add(StartCaptureEvent());
                            },
                            iconSize: 200,
                            icon: Icon(
                              Icons.circle_outlined,
                              color: Color.fromARGB(255, 240, 114, 105),
                            ))
                        : IconButton(
                            onPressed: () {
                              context
                                  .read<CameraUseBloc>()
                                  .add(StopCaptureEvent());
                            },
                            iconSize: 200,
                            icon: Icon(
                              Icons.square_rounded,
                              color: Color.fromARGB(255, 240, 114, 105),
                            ))
                  ],
                ),
                Row(
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
                )
              ],
            );
          },
        )),
      ),
    );
  }
}
