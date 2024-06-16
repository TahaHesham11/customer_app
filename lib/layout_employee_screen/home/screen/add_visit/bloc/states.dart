class AddVisitStates {}

class AddVisitInitialState extends AddVisitStates {}

class AddVisitIsClickState extends AddVisitStates {
  final bool isClick;

  AddVisitIsClickState(this.isClick);
}