// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserPreferencesStruct extends FFFirebaseStruct {
  UserPreferencesStruct({
    String? runType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _runType = runType,
        super(firestoreUtilData);

  // "runType" field.
  String? _runType;
  String get runType => _runType ?? '';
  set runType(String? val) => _runType = val;

  bool hasRunType() => _runType != null;

  static UserPreferencesStruct fromMap(Map<String, dynamic> data) =>
      UserPreferencesStruct(
        runType: data['runType'] as String?,
      );

  static UserPreferencesStruct? maybeFromMap(dynamic data) => data is Map
      ? UserPreferencesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'runType': _runType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'runType': serializeParam(
          _runType,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserPreferencesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserPreferencesStruct(
        runType: deserializeParam(
          data['runType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserPreferencesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserPreferencesStruct && runType == other.runType;
  }

  @override
  int get hashCode => const ListEquality().hash([runType]);
}

UserPreferencesStruct createUserPreferencesStruct({
  String? runType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserPreferencesStruct(
      runType: runType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserPreferencesStruct? updateUserPreferencesStruct(
  UserPreferencesStruct? userPreferences, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userPreferences
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserPreferencesStructData(
  Map<String, dynamic> firestoreData,
  UserPreferencesStruct? userPreferences,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userPreferences == null) {
    return;
  }
  if (userPreferences.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userPreferences.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userPreferencesData =
      getUserPreferencesFirestoreData(userPreferences, forFieldValue);
  final nestedData =
      userPreferencesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userPreferences.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserPreferencesFirestoreData(
  UserPreferencesStruct? userPreferences, [
  bool forFieldValue = false,
]) {
  if (userPreferences == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userPreferences.toMap());

  // Add any Firestore field values
  userPreferences.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserPreferencesListFirestoreData(
  List<UserPreferencesStruct>? userPreferencess,
) =>
    userPreferencess
        ?.map((e) => getUserPreferencesFirestoreData(e, true))
        .toList() ??
    [];
