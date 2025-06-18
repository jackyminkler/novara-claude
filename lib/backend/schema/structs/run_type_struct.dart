// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RunTypeStruct extends FFFirebaseStruct {
  RunTypeStruct({
    String? title,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _img = img,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static RunTypeStruct fromMap(Map<String, dynamic> data) => RunTypeStruct(
        title: data['title'] as String?,
        img: data['img'] as String?,
      );

  static RunTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RunTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static RunTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RunTypeStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RunTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RunTypeStruct && title == other.title && img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([title, img]);
}

RunTypeStruct createRunTypeStruct({
  String? title,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RunTypeStruct(
      title: title,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RunTypeStruct? updateRunTypeStruct(
  RunTypeStruct? runType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    runType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRunTypeStructData(
  Map<String, dynamic> firestoreData,
  RunTypeStruct? runType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (runType == null) {
    return;
  }
  if (runType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && runType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final runTypeData = getRunTypeFirestoreData(runType, forFieldValue);
  final nestedData = runTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = runType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRunTypeFirestoreData(
  RunTypeStruct? runType, [
  bool forFieldValue = false,
]) {
  if (runType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(runType.toMap());

  // Add any Firestore field values
  runType.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRunTypeListFirestoreData(
  List<RunTypeStruct>? runTypes,
) =>
    runTypes?.map((e) => getRunTypeFirestoreData(e, true)).toList() ?? [];
