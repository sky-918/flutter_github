part of 'person_bloc.dart';

class PersonState extends Equatable {
  PersonBean personBean;
  List<PersonEventsBean> personEventsBean;

  PersonState(
      {PersonBean? personBean, List<PersonEventsBean>? personEventsBean})
      : personBean = personBean ?? PersonBean.empty,
        personEventsBean = personEventsBean ?? [];

  PersonState setPersonBean(
      PersonBean personBean, List<PersonEventsBean> personEventsBean) {
    return PersonState(
        personBean: personBean, personEventsBean: personEventsBean);
  }

  @override
  List<Object> get props => [personBean, personEventsBean];
}
