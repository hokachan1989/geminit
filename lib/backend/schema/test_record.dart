import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestRecord extends FirestoreRecord {
  TestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "imageUrl1" field.
  String? _imageUrl1;
  String get imageUrl1 => _imageUrl1 ?? '';
  bool hasImageUrl1() => _imageUrl1 != null;

  // "imageUrl2" field.
  String? _imageUrl2;
  String get imageUrl2 => _imageUrl2 ?? '';
  bool hasImageUrl2() => _imageUrl2 != null;

  void _initializeFields() {
    _price = castToType<int>(snapshotData['price']);
    _imageUrl1 = snapshotData['imageUrl1'] as String?;
    _imageUrl2 = snapshotData['imageUrl2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('test');

  static Stream<TestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestRecord.fromSnapshot(s));

  static Future<TestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestRecord.fromSnapshot(s));

  static TestRecord fromSnapshot(DocumentSnapshot snapshot) => TestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestRecordData({
  int? price,
  String? imageUrl1,
  String? imageUrl2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'imageUrl1': imageUrl1,
      'imageUrl2': imageUrl2,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestRecordDocumentEquality implements Equality<TestRecord> {
  const TestRecordDocumentEquality();

  @override
  bool equals(TestRecord? e1, TestRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.imageUrl1 == e2?.imageUrl1 &&
        e1?.imageUrl2 == e2?.imageUrl2;
  }

  @override
  int hash(TestRecord? e) =>
      const ListEquality().hash([e?.price, e?.imageUrl1, e?.imageUrl2]);

  @override
  bool isValidKey(Object? o) => o is TestRecord;
}
