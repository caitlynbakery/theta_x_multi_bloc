part of 'camera_use_bloc.dart';

class CameraUseState extends Equatable {
  final String responseMessage;

  const CameraUseState({required this.responseMessage});

  factory CameraUseState.initial() =>
      CameraUseState(responseMessage: 'waiting for response');

  @override
  List<Object> get props => [responseMessage];

  @override
  bool get stringify => true;

  CameraUseState copyWith({
    String? responseMessage,
  }) {
    return CameraUseState(
      responseMessage: responseMessage ?? this.responseMessage,
    );
  }
}
