import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'function_test_widget.dart' show FunctionTestWidget;
import 'package:flutter/material.dart';

class FunctionTestModel extends FlutterFlowModel<FunctionTestWidget> {
  ///  Local state fields for this page.

  String sayHello = 'sayHello';

  String geministate = 'gemini';

  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Stores action output result for [Cloud Function - sayHello] action in Button widget.
  SayHelloCloudFunctionCallResponse? cloudFunctiongee;
  // Stores action output result for [Cloud Function - menuSuggestionFlow] action in Button widget.
  MenuSuggestionFlowCloudFunctionCallResponse? cloudFunction1mw;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
