import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bnb_event.dart';
part 'bnb_state.dart';

class BnbBloc extends Bloc<BnbEvent, BnbState> {
  BnbBloc() : super(const BnbInitial()) {
    on<IncrementEvent>((event, emit) {
      emit(BnbState(state.count + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(BnbState(state.count - 1));
    });

    @override
    Stream<BnbState> mapEventToState(BnbEvent event) async* {
      if (event is IncrementEvent) {
        yield BnbState(state.count + 1);
      } else if (event is DecrementEvent) {
        yield BnbState(state.count - 1);
      }
    }
  }
}