import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "fav_runTerrain" field.
  String? _favRunTerrain;
  String get favRunTerrain => _favRunTerrain ?? '';
  bool hasFavRunTerrain() => _favRunTerrain != null;

  // "avg_pace" field.
  String? _avgPace;
  String get avgPace => _avgPace ?? '';
  bool hasAvgPace() => _avgPace != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "pref_distance" field.
  String? _prefDistance;
  String get prefDistance => _prefDistance ?? '';
  bool hasPrefDistance() => _prefDistance != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _location = snapshotData['location'] as String?;
    _favRunTerrain = snapshotData['fav_runTerrain'] as String?;
    _avgPace = snapshotData['avg_pace'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _prefDistance = snapshotData['pref_distance'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? photoUrl,
  String? location,
  String? favRunTerrain,
  String? avgPace,
  String? displayName,
  DateTime? createdTime,
  String? uid,
  String? email,
  String? phoneNumber,
  String? prefDistance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'location': location,
      'fav_runTerrain': favRunTerrain,
      'avg_pace': avgPace,
      'display_name': displayName,
      'created_time': createdTime,
      'uid': uid,
      'email': email,
      'phone_number': phoneNumber,
      'pref_distance': prefDistance,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.location == e2?.location &&
        e1?.favRunTerrain == e2?.favRunTerrain &&
        e1?.avgPace == e2?.avgPace &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.uid == e2?.uid &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.prefDistance == e2?.prefDistance;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.location,
        e?.favRunTerrain,
        e?.avgPace,
        e?.displayName,
        e?.createdTime,
        e?.uid,
        e?.email,
        e?.phoneNumber,
        e?.prefDistance
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
