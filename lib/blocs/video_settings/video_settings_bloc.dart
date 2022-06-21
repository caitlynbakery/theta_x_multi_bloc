import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:equatable/equatable.dart';

import '../../services/theta_service.dart';

part 'video_settings_event.dart';
part 'video_settings_state.dart';

class VideoSettingsBloc extends Bloc<VideoSettingsEvent, VideoSettingsState> {
  VideoSettingsBloc() : super(VideoSettingsState.initial()) {
    var chopper = ChopperClient(
        services: [ThetaService.create()], converter: const JsonConverter());
    final thetaService = chopper.getService<ThetaService>();
    on<Video8K2FPSEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {
            'fileFormat': {
              'type': 'mp4',
              'width': 7680,
              'height': 3840,
              '_codec': 'H.264/MPEG-4 AVC',
              '_frameRate': 2
            }
          }
        }
      });
      emit(VideoSettingsState(responseMessage: response.bodyString));

      // TODO: implement event handler
    });
  }
}
