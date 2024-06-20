import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsRecord extends FirestoreRecord {
  GoalsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "isPublic" field.
  bool? _isPublic;
  bool get isPublic => _isPublic ?? false;
  bool hasIsPublic() => _isPublic != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "coverlmgUrl" field.
  String? _coverlmgUrl;
  String get coverlmgUrl => _coverlmgUrl ?? '';
  bool hasCoverlmgUrl() => _coverlmgUrl != null;

  // "iconlmgUrl" field.
  String? _iconlmgUrl;
  String get iconlmgUrl => _iconlmgUrl ?? '';
  bool hasIconlmgUrl() => _iconlmgUrl != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _isPublic = snapshotData['isPublic'] as bool?;
    _title = snapshotData['title'] as String?;
    _coverlmgUrl = snapshotData['coverlmgUrl'] as String?;
    _iconlmgUrl = snapshotData['iconlmgUrl'] as String?;
    _icon = snapshotData['icon'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalsRecord.fromSnapshot(s));

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalsRecord.fromSnapshot(s));

  static GoalsRecord fromSnapshot(DocumentSnapshot snapshot) => GoalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalsRecordData({
  DocumentReference? createdBy,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? isDeleted,
  bool? isPublic,
  String? title,
  String? coverlmgUrl,
  String? iconlmgUrl,
  String? icon,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdBy': createdBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isDeleted': isDeleted,
      'isPublic': isPublic,
      'title': title,
      'coverlmgUrl': coverlmgUrl,
      'iconlmgUrl': iconlmgUrl,
      'icon': icon,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalsRecordDocumentEquality implements Equality<GoalsRecord> {
  const GoalsRecordDocumentEquality();

  @override
  bool equals(GoalsRecord? e1, GoalsRecord? e2) {
    return e1?.createdBy == e2?.createdBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.isPublic == e2?.isPublic &&
        e1?.title == e2?.title &&
        e1?.coverlmgUrl == e2?.coverlmgUrl &&
        e1?.iconlmgUrl == e2?.iconlmgUrl &&
        e1?.icon == e2?.icon &&
        e1?.description == e2?.description;
  }

  @override
  int hash(GoalsRecord? e) => const ListEquality().hash([
        e?.createdBy,
        e?.createdAt,
        e?.updatedAt,
        e?.isDeleted,
        e?.isPublic,
        e?.title,
        e?.coverlmgUrl,
        e?.iconlmgUrl,
        e?.icon,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is GoalsRecord;
}
