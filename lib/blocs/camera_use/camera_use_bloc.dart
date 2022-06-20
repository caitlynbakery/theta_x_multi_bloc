import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'camera_use_event.dart';
part 'camera_use_state.dart';

class CameraUseBloc extends Bloc<CameraUseEvent, CameraUseState> {
  CameraUseBloc() : super(CameraUseInitial()) {
    on<CameraUseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
