import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThreadsRecord extends FirestoreRecord {
  ThreadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('threads');

  static Stream<ThreadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreadsRecord.fromSnapshot(s));

  static Future<ThreadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreadsRecord.fromSnapshot(s));

  static ThreadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThreadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreadsRecordData({
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThreadsRecordDocumentEquality implements Equality<ThreadsRecord> {
  const ThreadsRecordDocumentEquality();

  @override
  bool equals(ThreadsRecord? e1, ThreadsRecord? e2) {
    return e1?.userRef == e2?.userRef;
  }

  @override
  int hash(ThreadsRecord? e) => const ListEquality().hash([e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is ThreadsRecord;
}
