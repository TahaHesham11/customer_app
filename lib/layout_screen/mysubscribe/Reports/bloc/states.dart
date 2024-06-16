class ReportStates{}

class ReportInitialState extends ReportStates{}

class ReportIsClickState extends ReportStates{

  final bool isClick;

  ReportIsClickState(this.isClick);

}