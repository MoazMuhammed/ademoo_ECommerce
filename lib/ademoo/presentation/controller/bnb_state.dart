part of 'bnb_bloc.dart';

 class BnbState extends Equatable {
  final int count;

  const BnbState(this.count);

  @override
  List<Object> get props => [count];
}

class BnbInitial extends BnbState {
  const BnbInitial() : super(0);

}

