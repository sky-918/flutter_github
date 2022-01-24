part of 'person_bloc.dart';

abstract class PersonEvent extends Equatable {
  const PersonEvent();

  @override
  List<Object> get props => [];
}

class UpdataEvent extends PersonEvent {}
class UpdataEvent1 extends PersonEvent {}
