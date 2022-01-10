part of 'bloctest_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();
}

class TestInitial extends TestState {
  const TestInitial({this.n=0});

 final int n ;

  TestInitial copyWith({int? num}) {
    return TestInitial(n: num ?? this.n);
  }

  @override
  List<Object> get props => [n];
}
