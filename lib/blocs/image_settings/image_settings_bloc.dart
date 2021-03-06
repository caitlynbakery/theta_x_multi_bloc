import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:equatable/equatable.dart';

import '../../services/theta_service.dart';

part 'image_settings_event.dart';
part 'image_settings_state.dart';

class ImageSettingsBloc extends Bloc<ImageSettingsEvent, ImageSettingsState> {
  ImageSettingsBloc() : super(ImageSettingsState.initial()) {
    var chopper = ChopperClient(
        services: [ThetaService.create()], converter: const JsonConverter());
    final thetaService = chopper.getService<ThetaService>();
    on<ImageStitchingAutoEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_imageStitching': 'auto'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ImageStitchingNoneEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_imageStitching': 'none'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ImageStitchingStaticEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_imageStitching': 'static'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ImageStitchingDynamicEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_imageStitching': 'dynamic'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ImageStitchingDynamicSemiAutoEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_imageStitching': 'dynamicSemiAuto'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<TopBottomCorrectionEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_topBottomCorrection': 'Apply'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<TopBottomDisapplyEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_topBottomCorrection': 'Disapply'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ExposureMinus2Event>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'exposureCompensation': -2.0}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<ExposureMinus1Event>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'exposureCompensation': -1.0}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<Exposure0Event>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'exposureCompensation': 0.0}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<Exposure1Event>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'exposureCompensation': 1.0}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<Exposure2Event>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'exposureCompensation': 2.0}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<FilterHDREvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_filter': 'hdr'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
    on<FilterOffEvent>((event, emit) async {
      var response = await thetaService.command({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {'_filter': 'off'}
        }
      });
      emit(ImageSettingsState(response: response.bodyString));
    });
  }
}
