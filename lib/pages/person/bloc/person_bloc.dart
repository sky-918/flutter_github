import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/api_address.dart';
import '../../../network/http_client.dart';
import '../../../utils/log_util.dart';
import 'person_bean.dart';

part 'person_event.dart';

part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonState(personBean: PersonBean())) {
    on<UpdataEvent>((event, emit) {
      _getNetwordData();
    });
  }

  void _getNetwordData()  {
    PersonBean? personBean;
     HttpClient.instanc.requestNetwork(ApiAddress.loginUrl,
        onErrorCall: (String mesage) {
      LogUtils.d("错误信息：$mesage");
    }, onSuccessCall: (data)  {
      personBean =  PersonBean.fromJson(data);
      if (personBean != null) {
        LogUtils.d("发送守护: ${personBean!.avatarUrl}");
        emit(state.setPersonBean(personBean!));
      }
    });

  }
}
