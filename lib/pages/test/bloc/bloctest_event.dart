part of 'bloctest_bloc.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();

  @override
  List<Object> get props => [];
}

class Addtset extends TestEvent {}

class Minus extends TestEvent {}
