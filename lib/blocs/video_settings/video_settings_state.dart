part of 'video_settings_bloc.dart';

abstract class VideoSettingsState extends Equatable {
  const VideoSettingsState();
  
  @override
  List<Object> get props => [];
}

class VideoSettingsInitial extends VideoSettingsState {}
