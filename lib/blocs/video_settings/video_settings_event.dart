part of 'video_settings_bloc.dart';

abstract class VideoSettingsEvent extends Equatable {
  const VideoSettingsEvent();

  @override
  List<Object> get props => [];
}

class Video8K2FPSEvent extends VideoSettingsEvent {}
