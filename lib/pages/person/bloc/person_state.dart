part of 'person_bloc.dart';
@immutable
abstract class PersonState extends Equatable {
  const PersonState();

}
class PersonTop extends PersonState{
  final PersonBean personBean;

  PersonTop({PersonBean? personBean}):personBean=personBean??PersonBean.empty;
  @override
  List<Object?> get props => [personBean];
  PersonTop setPersonBean(PersonBean personBean) {
    return PersonTop(personBean: personBean);
  }
}
class PersonList extends PersonState{
  final List<PersonEventsBean> personEventsBean;

  PersonList(this.personEventsBean);

  @override
  List<Object?> get props => [personEventsBean];
}
//
//
// class PersonState extends Equatable {
//   final PersonBean personBean;
//   final PersonEventsBean personEventsBean;
//
//   PersonState({PersonBean? personBean, PersonEventsBean? personEventsBean})
//       : personBean = personBean ?? PersonBean.empty,
//         personEventsBean = personEventsBean ?? PersonEventsBean.empty;
//
//   PersonState setPersonBean(PersonBean personBean) {
//     return PersonState(personBean: personBean);
//   }
//   PersonState setPersonEventsBean(PersonEventsBean personBean) {
//     return PersonState(personEventsBean: personEventsBean);
//   }
//
//   @override
//   List<Object> get props => [personBean,personEventsBean];