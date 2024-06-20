import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfilesRecord extends FirestoreRecord {
  ProfilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usersRef" field.
  DocumentReference? _usersRef;
  DocumentReference? get usersRef => _usersRef;
  bool hasUsersRef() => _usersRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _usersRef = snapshotData['usersRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profiles');

  static Stream<ProfilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilesRecord.fromSnapshot(s));

  static Future<ProfilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilesRecord.fromSnapshot(s));

  static ProfilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilesRecordData({
  DocumentReference? usersRef,
  DocumentReference? userRef,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usersRef': usersRef,
      'userRef': userRef,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilesRecordDocumentEquality implements Equality<ProfilesRecord> {
  const ProfilesRecordDocumentEquality();

  @override
  bool equals(ProfilesRecord? e1, ProfilesRecord? e2) {
    return e1?.usersRef == e2?.usersRef &&
        e1?.userRef == e2?.userRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ProfilesRecord? e) => const ListEquality()
      .hash([e?.usersRef, e?.userRef, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is ProfilesRecord;
}
