
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:equatable/equatable.dart';
  
  part 'matchdetailscreen_state.dart';
  
  class MatchdetailscreenCubit extends Cubit<MatchdetailscreenState> {
    MatchdetailscreenCubit() : super(MatchdetailscreenInitial());
  }
  