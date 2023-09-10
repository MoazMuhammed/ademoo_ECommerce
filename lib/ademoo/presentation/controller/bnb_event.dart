part of 'bnb_bloc.dart';

abstract class BnbEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementEvent extends BnbEvent {}

class DecrementEvent extends BnbEvent {}
