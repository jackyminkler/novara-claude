// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CommentsStruct extends FFFirebaseStruct {
  CommentsStruct({
    String? name,
    String? date,
    String? comment,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _date = date,
        _comment = comment,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  static CommentsStruct fromMap(Map<String, dynamic> data) => CommentsStruct(
        name: data['name'] as String?,
        date: data['date'] as String?,
        comment: data['comment'] as String?,
      );

  static CommentsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CommentsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'date': _date,
        'comment': _comment,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
      }.withoutNulls;

  static CommentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommentsStruct &&
        name == other.name &&
        date == other.date &&
        comment == other.comment;
  }

  @override
  int get hashCode => const ListEquality().hash([name, date, comment]);
}

CommentsStruct createCommentsStruct({
  String? name,
  String? date,
  String? comment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CommentsStruct(
      name: name,
      date: date,
      comment: comment,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CommentsStruct? updateCommentsStruct(
  CommentsStruct? comments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    comments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCommentsStructData(
  Map<String, dynamic> firestoreData,
  CommentsStruct? comments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (comments == null) {
    return;
  }
  if (comments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && comments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final commentsData = getCommentsFirestoreData(comments, forFieldValue);
  final nestedData = commentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = comments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCommentsFirestoreData(
  CommentsStruct? comments, [
  bool forFieldValue = false,
]) {
  if (comments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(comments.toMap());

  // Add any Firestore field values
  comments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCommentsListFirestoreData(
  List<CommentsStruct>? commentss,
) =>
    commentss?.map((e) => getCommentsFirestoreData(e, true)).toList() ?? [];
