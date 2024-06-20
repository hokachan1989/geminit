import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskActivitiesRecord extends FirestoreRecord {
  TaskActivitiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('taskActivities')
          : FirebaseFirestore.instance.collectionGroup('taskActivities');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('taskActivities').doc(id);

  static Stream<TaskActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskActivitiesRecord.fromSnapshot(s));

  static Future<TaskActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskActivitiesRecord.fromSnapshot(s));

  static TaskActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TaskActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskActivitiesRecordData({
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskActivitiesRecordDocumentEquality
    implements Equality<TaskActivitiesRecord> {
  const TaskActivitiesRecordDocumentEquality();

  @override
  bool equals(TaskActivitiesRecord? e1, TaskActivitiesRecord? e2) {
    return e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(TaskActivitiesRecord? e) =>
      const ListEquality().hash([e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is TaskActivitiesRecord;
}
