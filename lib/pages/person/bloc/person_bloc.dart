import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '/modle/person_events_bean.dart';
import '/network/network.dart';
import '../../../utils/utils_index.dart';
import 'person_bean.dart';

part 'person_event.dart';

part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonTop()) {
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
        emit(PersonTop(personBean:personBean));
        _getNetPersonEvbents(personBean!.login.onDealNull());
      }
    });
  }

  void _getNetPersonEvbents(String userName) {
    HttpClient.instanc
        .requestNetwork(ApiAddress.getEvent(userName, page: 1, pageSize: 20),
            onErrorCall: (msg) {
      LogUtils.d("错误信息：$msg");
    }, onSuccessCall: (data) {
      List<PersonEventsBean> list = [];
      for (int i = 0; i < data.length; i++) {
        list.add(PersonEventsBean.fromJson(data[i]));
      }
      emit(PersonList(list));
    });
  }
}
