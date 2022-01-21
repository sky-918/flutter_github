import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '/modle/person_events_bean.dart';
import '/network/network.dart';
import '../../../utils/utils_index.dart';
import 'person_bean.dart';

part 'person_event.dart';

part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonState()) {
    on<UpdataEvent>((event, emit) {
      _getNetwordData();
    });
  }

  void _getNetwordData() {
    PersonBean? personBean;
    HttpClient.instanc.requestNetwork(ApiAddress.loginUrl,
        onErrorCall: (String mesage) {
      LogUtils.d("错误信息：$mesage");
    }, onSuccessCall: (data) {
      personBean = PersonBean.fromJson(data);
      if (personBean != null) {
        emit(state.setPersonBean(personBean!));
        _getNetPersonEvbents(personBean!.login.onDealNull());
      }
    });
  }

  void _getNetPersonEvbents(String userName) {
    Map<String, int> params = Map();
    params["page"] = 1;
    params["per_page"] = 10;

    PersonEventsBean? personEventsBean;
    HttpClient.instanc.requestNetwork(ApiAddress.getEvent(userName), onErrorCall: (msg) {
      LogUtils.d("错误信息：$msg");
    }, onSuccessCall: (data) {
      personEventsBean = PersonEventsBean.fromJson(data);
      if (personEventsBean != null) {
        emit(state.setPersonEventsBean(personEventsBean!));
      }
    });
  }
}
