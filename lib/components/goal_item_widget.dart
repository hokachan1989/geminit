import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'goal_item_model.dart';
export 'goal_item_model.dart';

class GoalItemWidget extends StatefulWidget {
  const GoalItemWidget({
    super.key,
    required this.goalDoc,
  });

  final GoalsRecord? goalDoc;

  @override
  State<GoalItemWidget> createState() => _GoalItemWidgetState();
}

class _GoalItemWidgetState extends State<GoalItemWidget> {
  late GoalItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalItemModel());

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.goalDoc?.title,
      'title',
    ));
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                const Duration(milliseconds: 2000),
                () async {
                  await widget.goalDoc!.reference.update(createGoalsRecordData(
                    title: valueOrDefault<String>(
                      _model.textController.text,
                      'title',
                    ),
                  ));
                },
              ),
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Label here...',
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Instrument Sans',
                      color: const Color(0xFFA6A6A6),
                      letterSpacing: 0.0,
                      lineHeight: 1.5,
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Instrument Sans',
                    letterSpacing: 0.0,
                  ),
              maxLines: null,
              minLines: 1,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
      ],
    );
  }
}
