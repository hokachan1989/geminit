// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PromptStruct extends FFFirebaseStruct {
  PromptStruct({
    String? content,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _content = content,
        super(firestoreUtilData);

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static PromptStruct fromMap(Map<String, dynamic> data) => PromptStruct(
        content: data['content'] as String?,
      );

  static PromptStruct? maybeFromMap(dynamic data) =>
      data is Map ? PromptStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromptStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromptStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromptStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromptStruct && content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([content]);
}

PromptStruct createPromptStruct({
  String? content,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromptStruct(
      content: content,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromptStruct? updatePromptStruct(
  PromptStruct? prompt, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    prompt
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromptStructData(
  Map<String, dynamic> firestoreData,
  PromptStruct? prompt,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prompt == null) {
    return;
  }
  if (prompt.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && prompt.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promptData = getPromptFirestoreData(prompt, forFieldValue);
  final nestedData = promptData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = prompt.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromptFirestoreData(
  PromptStruct? prompt, [
  bool forFieldValue = false,
]) {
  if (prompt == null) {
    return {};
  }
  final firestoreData = mapToFirestore(prompt.toMap());

  // Add any Firestore field values
  prompt.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromptListFirestoreData(
  List<PromptStruct>? prompts,
) =>
    prompts?.map((e) => getPromptFirestoreData(e, true)).toList() ?? [];
