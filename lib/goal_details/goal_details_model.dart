import '/components/create_task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'goal_details_widget.dart' show GoalDetailsWidget;
import 'package:flutter/material.dart';

class GoalDetailsModel extends FlutterFlowModel<GoalDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for CreateTask component.
  late CreateTaskModel createTaskModel;

  @override
  void initState(BuildContext context) {
    createTaskModel = createModel(context, () => CreateTaskModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    createTaskModel.dispose();
  }
}
