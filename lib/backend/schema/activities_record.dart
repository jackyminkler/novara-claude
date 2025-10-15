import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// An activity event post someone creates.
class ActivitiesRecord extends FirestoreRecord {
  ActivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;

  /// e.g.
  ///
  /// "Golden Gate Tempo Run"
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;

  /// Optional details
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdAt" field.
  DateTime? _createdAt;

  /// Time it was posted
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "creatorID" field.
  String? _creatorID;
  String get creatorID => _creatorID ?? '';
  bool hasCreatorID() => _creatorID != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "runType" field.
  String? _runType;
  String get runType => _runType ?? '';
  bool hasRunType() => _runType != null;

  // "runTerrain" field.
  String? _runTerrain;
  String get runTerrain => _runTerrain ?? '';
  bool hasRunTerrain() => _runTerrain != null;

  // "participants" field.
  List<DocumentReference>? _participants;
  List<DocumentReference> get participants => _participants ?? const [];
  bool hasParticipants() => _participants != null;

  // "pace" field.
  String? _pace;
  String get pace => _pace ?? '';
  bool hasPace() => _pace != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  bool hasDistance() => _distance != null;

  // "activityID" field.
  String? _activityID;
  String get activityID => _activityID ?? '';
  bool hasActivityID() => _activityID != null;

  // "creatorRef" field.
  DocumentReference? _creatorRef;
  DocumentReference? get creatorRef => _creatorRef;
  bool hasCreatorRef() => _creatorRef != null;

  // "clubHosted" field.
  bool? _clubHosted;
  bool get clubHosted => _clubHosted ?? false;
  bool hasClubHosted() => _clubHosted != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _date = snapshotData['date'] as DateTime?;
    _creatorID = snapshotData['creatorID'] as String?;
    _location = snapshotData['location'] as String?;
    _runType = snapshotData['runType'] as String?;
    _runTerrain = snapshotData['runTerrain'] as String?;
    _participants = getDataList(snapshotData['participants']);
    _pace = snapshotData['pace'] as String?;
    _distance = snapshotData['distance'] as String?;
    _activityID = snapshotData['activityID'] as String?;
    _creatorRef = snapshotData['creatorRef'] as DocumentReference?;
    _clubHosted = snapshotData['clubHosted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activities');

  static Stream<ActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivitiesRecord.fromSnapshot(s));

  static Future<ActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivitiesRecord.fromSnapshot(s));

  static ActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivitiesRecordData({
  String? title,
  String? description,
  DateTime? createdAt,
  DateTime? date,
  String? creatorID,
  String? location,
  String? runType,
  String? runTerrain,
  String? pace,
  String? distance,
  String? activityID,
  DocumentReference? creatorRef,
  bool? clubHosted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'createdAt': createdAt,
      'date': date,
      'creatorID': creatorID,
      'location': location,
      'runType': runType,
      'runTerrain': runTerrain,
      'pace': pace,
      'distance': distance,
      'activityID': activityID,
      'creatorRef': creatorRef,
      'clubHosted': clubHosted,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivitiesRecordDocumentEquality implements Equality<ActivitiesRecord> {
  const ActivitiesRecordDocumentEquality();

  @override
  bool equals(ActivitiesRecord? e1, ActivitiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.date == e2?.date &&
        e1?.creatorID == e2?.creatorID &&
        e1?.location == e2?.location &&
        e1?.runType == e2?.runType &&
        e1?.runTerrain == e2?.runTerrain &&
        listEquality.equals(e1?.participants, e2?.participants) &&
        e1?.pace == e2?.pace &&
        e1?.distance == e2?.distance &&
        e1?.activityID == e2?.activityID &&
        e1?.creatorRef == e2?.creatorRef &&
        e1?.clubHosted == e2?.clubHosted;
  }

  @override
  int hash(ActivitiesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.createdAt,
        e?.date,
        e?.creatorID,
        e?.location,
        e?.runType,
        e?.runTerrain,
        e?.participants,
        e?.pace,
        e?.distance,
        e?.activityID,
        e?.creatorRef,
        e?.clubHosted
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivitiesRecord;
}
