part of 'person_bloc.dart';

class PersonState extends Equatable {
  final PersonBean personBean;
  final PersonEventsBean personEventsBean;

  PersonState({PersonBean? personBean, PersonEventsBean? personEventsBean})
      : personBean = personBean ?? PersonBean.empty,
        personEventsBean = personEventsBean ?? PersonEventsBean.empty;

  PersonState setPersonBean(PersonBean personBean) {
    return PersonState(personBean: personBean);
  }
  PersonState setPersonEventsBean(PersonEventsBean personBean) {
    return PersonState(personEventsBean: personEventsBean);
  }

  @override
  List<Object> get props => [personBean,personEventsBean];
}
