import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _updater = false;
  bool get updater => _updater;
  set updater(bool value) {
    _updater = value;
  }

  List<CommentsStruct> _CommentsList = [
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Emma D.\",\"date\":\"March 2024\",\"comment\":\"This event was truly outstanding! From the moment I arrived, everything was smooth and well-organized. The staff was incredibly helpful.\"}')),
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"James C.\",\"date\":\"July 2023\",\"comment\":\"I had such a great time! The live performances were incredible, and the organizers really outdid themselves with the setup.\"}')),
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Sophia B.\",\"date\":\"November 2023\",\"comment\":\"What an amazing experience! I attended with my friends, and we all agreed it was one of the best events we’ve been to in a long time.\"}')),
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Liam W.\",\"date\":\"February 2024\",\"comment\":\"This event exceeded my expectations. The location was easy to find, and the parking was convenient.\"}')),
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Olivia M.\",\"date\":\"June 2023\",\"comment\":\"I’m so glad I decided to attend this event. The atmosphere was warm and welcoming, with something for everyone.\"}')),
    CommentsStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Ethan M.\",\"date\":\"April 2024\",\"comment\":\"Overall, a good event. The venue was spacious and clean, and the activities were enjoyable.\"}'))
  ];
  List<CommentsStruct> get CommentsList => _CommentsList;
  set CommentsList(List<CommentsStruct> value) {
    _CommentsList = value;
  }

  void addToCommentsList(CommentsStruct value) {
    CommentsList.add(value);
  }

  void removeFromCommentsList(CommentsStruct value) {
    CommentsList.remove(value);
  }

  void removeAtIndexFromCommentsList(int index) {
    CommentsList.removeAt(index);
  }

  void updateCommentsListAtIndex(
    int index,
    CommentsStruct Function(CommentsStruct) updateFn,
  ) {
    CommentsList[index] = updateFn(_CommentsList[index]);
  }

  void insertAtIndexInCommentsList(int index, CommentsStruct value) {
    CommentsList.insert(index, value);
  }

  bool _FromRegister = true;
  bool get FromRegister => _FromRegister;
  set FromRegister(bool value) {
    _FromRegister = value;
  }

  String _SelectedLocation = '';
  String get SelectedLocation => _SelectedLocation;
  set SelectedLocation(String value) {
    _SelectedLocation = value;
  }

  String _SelectedRunTypeHomeFilter = '';
  String get SelectedRunTypeHomeFilter => _SelectedRunTypeHomeFilter;
  set SelectedRunTypeHomeFilter(String value) {
    _SelectedRunTypeHomeFilter = value;
  }

  String _SelectedRunTerrainHomeFilter = '';
  String get SelectedRunTerrainHomeFilter => _SelectedRunTerrainHomeFilter;
  set SelectedRunTerrainHomeFilter(String value) {
    _SelectedRunTerrainHomeFilter = value;
  }

  String _SelectedRunTerrainProfile = '';
  String get SelectedRunTerrainProfile => _SelectedRunTerrainProfile;
  set SelectedRunTerrainProfile(String value) {
    _SelectedRunTerrainProfile = value;
  }

  String _SelectedPaceActivity = '';
  String get SelectedPaceActivity => _SelectedPaceActivity;
  set SelectedPaceActivity(String value) {
    _SelectedPaceActivity = value;
  }

  String _SelectedAvgPaceProfile = '';
  String get SelectedAvgPaceProfile => _SelectedAvgPaceProfile;
  set SelectedAvgPaceProfile(String value) {
    _SelectedAvgPaceProfile = value;
  }

  List<DocumentReference> _FilteredActivitiesUpcoming = [];
  List<DocumentReference> get FilteredActivitiesUpcoming =>
      _FilteredActivitiesUpcoming;
  set FilteredActivitiesUpcoming(List<DocumentReference> value) {
    _FilteredActivitiesUpcoming = value;
  }

  void addToFilteredActivitiesUpcoming(DocumentReference value) {
    FilteredActivitiesUpcoming.add(value);
  }

  void removeFromFilteredActivitiesUpcoming(DocumentReference value) {
    FilteredActivitiesUpcoming.remove(value);
  }

  void removeAtIndexFromFilteredActivitiesUpcoming(int index) {
    FilteredActivitiesUpcoming.removeAt(index);
  }

  void updateFilteredActivitiesUpcomingAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    FilteredActivitiesUpcoming[index] =
        updateFn(_FilteredActivitiesUpcoming[index]);
  }

  void insertAtIndexInFilteredActivitiesUpcoming(
      int index, DocumentReference value) {
    FilteredActivitiesUpcoming.insert(index, value);
  }

  List<DocumentReference> _FilteredActivitiesPast = [];
  List<DocumentReference> get FilteredActivitiesPast => _FilteredActivitiesPast;
  set FilteredActivitiesPast(List<DocumentReference> value) {
    _FilteredActivitiesPast = value;
  }

  void addToFilteredActivitiesPast(DocumentReference value) {
    FilteredActivitiesPast.add(value);
  }

  void removeFromFilteredActivitiesPast(DocumentReference value) {
    FilteredActivitiesPast.remove(value);
  }

  void removeAtIndexFromFilteredActivitiesPast(int index) {
    FilteredActivitiesPast.removeAt(index);
  }

  void updateFilteredActivitiesPastAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    FilteredActivitiesPast[index] = updateFn(_FilteredActivitiesPast[index]);
  }

  void insertAtIndexInFilteredActivitiesPast(
      int index, DocumentReference value) {
    FilteredActivitiesPast.insert(index, value);
  }

  List<DocumentReference> _FilteredActivitiesOrganized = [];
  List<DocumentReference> get FilteredActivitiesOrganized =>
      _FilteredActivitiesOrganized;
  set FilteredActivitiesOrganized(List<DocumentReference> value) {
    _FilteredActivitiesOrganized = value;
  }

  void addToFilteredActivitiesOrganized(DocumentReference value) {
    FilteredActivitiesOrganized.add(value);
  }

  void removeFromFilteredActivitiesOrganized(DocumentReference value) {
    FilteredActivitiesOrganized.remove(value);
  }

  void removeAtIndexFromFilteredActivitiesOrganized(int index) {
    FilteredActivitiesOrganized.removeAt(index);
  }

  void updateFilteredActivitiesOrganizedAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    FilteredActivitiesOrganized[index] =
        updateFn(_FilteredActivitiesOrganized[index]);
  }

  void insertAtIndexInFilteredActivitiesOrganized(
      int index, DocumentReference value) {
    FilteredActivitiesOrganized.insert(index, value);
  }
}
