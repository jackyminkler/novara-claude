import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityCommentsRecord extends FirestoreRecord {
  ActivityCommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "commenterRef" field.
  DocumentReference? _commenterRef;
  DocumentReference? get commenterRef => _commenterRef;
  bool hasCommenterRef() => _commenterRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _comment = snapshotData['comment'] as String?;
    _commenterRef = snapshotData['commenterRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('activity_comments')
          : FirebaseFirestore.instance.collectionGroup('activity_comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('activity_comments').doc(id);

  static Stream<ActivityCommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityCommentsRecord.fromSnapshot(s));

  static Future<ActivityCommentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ActivityCommentsRecord.fromSnapshot(s));

  static ActivityCommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityCommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityCommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityCommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityCommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityCommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityCommentsRecordData({
  DateTime? date,
  String? comment,
  DocumentReference? commenterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'comment': comment,
      'commenterRef': commenterRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityCommentsRecordDocumentEquality
    implements Equality<ActivityCommentsRecord> {
  const ActivityCommentsRecordDocumentEquality();

  @override
  bool equals(ActivityCommentsRecord? e1, ActivityCommentsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.comment == e2?.comment &&
        e1?.commenterRef == e2?.commenterRef;
  }

  @override
  int hash(ActivityCommentsRecord? e) =>
      const ListEquality().hash([e?.date, e?.comment, e?.commenterRef]);

  @override
  bool isValidKey(Object? o) => o is ActivityCommentsRecord;
}
