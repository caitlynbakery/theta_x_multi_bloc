import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/image_settings/image_settings_bloc.dart';

class ImageSettingsScreen extends StatelessWidget {
  const ImageSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageSettingsBloc, ImageSettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: const Text(
              "Image Settings",
            ),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Image Stitching',
                  style: TextStyle(fontSize: 30, fontFamily: 'LemonMilk'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ImageStitchingAutoEvent());
                      },
                      child: const Text('Auto'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ImageStitchingNoneEvent());
                      },
                      child: const Text('None'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ImageStitchingStaticEvent());
                      },
                      child: const Text('Static'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ImageStitchingDynamicEvent());
                      },
                      child: const Text('Dynamic'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ImageStitchingDynamicSemiAutoEvent());
                      },
                      child: const Text('DynamicSemiAuto'),
                    ),
                  ],
                ),
                const Text(
                  'Top Bottom Correction',
                  style: TextStyle(fontSize: 30, fontFamily: 'LemonMilk'),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(TopBottomCorrectionEvent());
                      },
                      child: const Text('Apply'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(TopBottomDisapplyEvent());
                      },
                      child: const Text('Disapply'),
                    ),
                  ],
                ),
                const Text(
                  'Exposure',
                  style: TextStyle(fontSize: 30, fontFamily: 'LemonMilk'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ExposureMinus2Event());
                      },
                      child: const Text('-2.0'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<ImageSettingsBloc>()
                            .add(ExposureMinus1Event());
                      },
                      child: const Text('-1.0'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ImageSettingsBloc>().add(Exposure0Event());
                      },
                      child: const Text('0.0'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ImageSettingsBloc>().add(Exposure1Event());
                      },
                      child: const Text('1.0'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ImageSettingsBloc>().add(Exposure2Event());
                      },
                      child: const Text('2.0'),
                    ),
                  ],
                ),
                const Text(
                  'Filter',
                  style: TextStyle(fontSize: 30, fontFamily: 'LemonMilk'),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<ImageSettingsBloc>()
                              .add(FilterHDREvent());
                        },
                        child: const Text('HDR'),
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 2, color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            context
                                .read<ImageSettingsBloc>()
                                .add(FilterOffEvent());
                          },
                          child: const Text(
                            'Off',
                          ))
                    ]),
              ]),
        );
      },
    );
  }
}
