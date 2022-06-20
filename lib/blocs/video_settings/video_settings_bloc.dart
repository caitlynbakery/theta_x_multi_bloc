import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'video_settings_event.dart';
part 'video_settings_state.dart';

class VideoSettingsBloc extends Bloc<VideoSettingsEvent, VideoSettingsState> {
  VideoSettingsBloc() : super(VideoSettingsInitial()) {
    on<VideoSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
