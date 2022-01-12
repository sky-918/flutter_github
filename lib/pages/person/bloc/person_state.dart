part of 'person_bloc.dart';

class PersonState extends Equatable {
  final PersonBean personBean;

  PersonState({PersonBean? personBean})
      : personBean = personBean ?? PersonBean.empty;

  PersonState setPersonBean(PersonBean personBean) {
    return PersonState(personBean: personBean);
  }

  @override
  List<Object> get props => [personBean];
}
