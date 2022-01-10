import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bloctest_event.dart';

part 'bloctest_state.dart';

class testBloc extends Bloc<TestEvent, TestInitial> {
  testBloc() : super(TestInitial()) {
     on<Addtset>((event, emit) {
          emit(state.copyWith(num: (state.n) + 1));
        });


        on<Minus>((event, emit) => emit(state.copyWith(num: state.n - 1)));
  }

  @override
  void onChange(Change<TestInitial> change) {
    print(change);
    super.onChange(change);
  }
}
