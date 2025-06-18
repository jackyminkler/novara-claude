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

  DateTime? _SelectedDate = DateTime.fromMillisecondsSinceEpoch(1731232320000);
  DateTime? get SelectedDate => _SelectedDate;
  set SelectedDate(DateTime? value) {
    _SelectedDate = value;
  }

  int _SelectedCard = 0;
  int get SelectedCard => _SelectedCard;
  set SelectedCard(int value) {
    _SelectedCard = value;
  }

  bool _SelectedFilter3 = false;
  bool get SelectedFilter3 => _SelectedFilter3;
  set SelectedFilter3(bool value) {
    _SelectedFilter3 = value;
  }

  List<EventsStruct> _EVENTS = [
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Bayfront Park, Miami, FL\",\"Title\":\"David Guetta Ultra Miami 2025 Music Festival\",\"Date\":\"Nov 25, 2025, 02:00 PM\",\"Price\":\"From \$45\",\"Rating\":\"4.8\",\"Tag\":\"Bestseller\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/4eoij23on5c5/2rf4regebrm%2Cykk%2Cy.png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Madison Square Garden, New York, NY\",\"Title\":\"Ed Sheeran Live Concert\",\"Date\":\"Feb 10, 2025, 08:00 PM\",\"Price\":\"From \$80\",\"Rating\":\"4.9\",\"Tag\":\"Bestseller\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/l9zbuqhuzyhn/e235234tregegbb_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Louvre Museum, Paris, France\",\"Title\":\"Van Gogh Immersive Experience\",\"Date\":\"Mar 15, 2025, 10:00 AM\",\"Price\":\"From \$25\",\"Rating\":\"4.7\",\"Tag\":\"New\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/m1h6k37gn30h/qwvfdgbytrtrt4534_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Coachella Valley, Indio, CA\",\"Title\":\"Coachella Music and Arts Festival\",\"Date\":\"Apr 12, 2025, All Day\",\"Price\":\"From \$150\",\"Rating\":\"4.9\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/om1ew6qeoaou/23r2fergebb_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Sydney Opera House, Sydney, Australia\",\"Title\":\"The Phantom of the Opera Live\",\"Date\":\"May 20, 2025, 07:00 PM\",\"Price\":\"From \$60\",\"Rating\":\"4.8\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/lksqwd29kurd/13erethrytu65_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Tokyo Big Sight, Tokyo, Japan\",\"Title\":\"Anime Expo Tokyo 2025\",\"Date\":\"Jun 5, 2025, 09:00 AM\",\"Price\":\"From \$35\",\"Rating\":\"4.7\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/mq1csaylvxc9/13r4rr7u6thytrg_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Wembley Stadium, London, UK\",\"Title\":\"Coldplay World Tour 2025\",\"Date\":\"Jul 18, 2025, 08:00 PM\",\"Price\":\"From \$100\",\"Rating\":\"4.9\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/of3g8pkycswr/23rrgtnytui8009876_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Berlin Film Theater, Berlin, Germany\",\"Title\":\"Berlin International Film Festival\",\"Date\":\"Aug 15, 2025, 10:00 AM\",\"Price\":\"From \$30\",\"Rating\":\"4.7\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/z66qe4nyi70o/32456787uytgrfeef_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Giza Pyramids, Cairo, Egypt\",\"Title\":\"Stars under the Pyramids Concert\",\"Date\":\"Sep 10, 2025, 06:00 PM\",\"Price\":\"From \$50\",\"Rating\":\"4.8\",\"Tag\":\"Unique\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/jk3xnjtdqd98/43t5t4etgrh67h_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Santorini Island, Greece\",\"Title\":\"Sunset Jazz Festival\",\"Date\":\"Oct 5, 2025, 05:00 PM\",\"Price\":\"From \$40\",\"Rating\":\"4.6\",\"Tag\":\"Hello World\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/z9agxwr1r2g4/34t5trhrhnrfh_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Grand Canyon National Park, AZ\",\"Title\":\"Stargazing Adventure\",\"Date\":\"Nov 20, 2025, 09:00 PM\",\"Price\":\"From \$20\",\"Rating\":\"4.8\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/y7038xxd4cwl/23r4ttghyu877i_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Dubai Expo City, UAE\",\"Title\":\"Dubai World Expo 2025\",\"Date\":\"Dec 1, 2025, All Day\",\"Price\":\"From \$60\",\"Rating\":\"4.9\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/pt13duzy9z8b/34r3wrtgyhthjik98_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Times Square, New York, NY\",\"Title\":\"New Year’s Eve Ball Drop Celebration\",\"Date\":\"Dec 31, 2025, 10:00 PM\",\"Price\":\"Free Entry\",\"Rating\":\"4.8\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/55miqcke2czy/43t35t6y7u6ujjtyhee_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}')),
    EventsStruct.fromSerializableMap(jsonDecode(
        '{\"Location\":\"Machu Picchu, Peru\",\"Title\":\"Sunrise Trek and Cultural Tour\",\"Date\":\"Jan 10, 2025, 05:00 AM\",\"Price\":\"From \$75\",\"Rating\":\"4.7\",\"Tag\":\"\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/eventy-118kat/assets/5pjt9twszgfg/234rtgh56u7_(1).png\",\"descr\":\"Ultra Music Festival is a globally renowned electronic dance music event that takes place annually in the vibrant city of Miami, Florida. This iconic festival has become a bucket-list destination for music enthusiasts from around the world, drawing tens of thousands of attendees to experience its electrifying atmosphere. Known for its star-studded lineup of world-class DJs, live performances, and cutting-edge stage production, Ultra delivers an unparalleled fusion of music, technology, and entertainment. From its high-energy beats to its immersive visuals and breathtaking pyrotechnics, the festival creates a dynamic environment that celebrates the very best of electronic music culture.\"}'))
  ];
  List<EventsStruct> get EVENTS => _EVENTS;
  set EVENTS(List<EventsStruct> value) {
    _EVENTS = value;
  }

  void addToEVENTS(EventsStruct value) {
    EVENTS.add(value);
  }

  void removeFromEVENTS(EventsStruct value) {
    EVENTS.remove(value);
  }

  void removeAtIndexFromEVENTS(int index) {
    EVENTS.removeAt(index);
  }

  void updateEVENTSAtIndex(
    int index,
    EventsStruct Function(EventsStruct) updateFn,
  ) {
    EVENTS[index] = updateFn(_EVENTS[index]);
  }

  void insertAtIndexInEVENTS(int index, EventsStruct value) {
    EVENTS.insert(index, value);
  }

  List<EventsStruct> _EVENTSFAVORITES = [];
  List<EventsStruct> get EVENTSFAVORITES => _EVENTSFAVORITES;
  set EVENTSFAVORITES(List<EventsStruct> value) {
    _EVENTSFAVORITES = value;
  }

  void addToEVENTSFAVORITES(EventsStruct value) {
    EVENTSFAVORITES.add(value);
  }

  void removeFromEVENTSFAVORITES(EventsStruct value) {
    EVENTSFAVORITES.remove(value);
  }

  void removeAtIndexFromEVENTSFAVORITES(int index) {
    EVENTSFAVORITES.removeAt(index);
  }

  void updateEVENTSFAVORITESAtIndex(
    int index,
    EventsStruct Function(EventsStruct) updateFn,
  ) {
    EVENTSFAVORITES[index] = updateFn(_EVENTSFAVORITES[index]);
  }

  void insertAtIndexInEVENTSFAVORITES(int index, EventsStruct value) {
    EVENTSFAVORITES.insert(index, value);
  }

  int _OrganizatorTAB = 0;
  int get OrganizatorTAB => _OrganizatorTAB;
  set OrganizatorTAB(int value) {
    _OrganizatorTAB = value;
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

  String _SelectedTimeline = '';
  String get SelectedTimeline => _SelectedTimeline;
  set SelectedTimeline(String value) {
    _SelectedTimeline = value;
  }

  List<String> _SelectedInterests = [];
  List<String> get SelectedInterests => _SelectedInterests;
  set SelectedInterests(List<String> value) {
    _SelectedInterests = value;
  }

  void addToSelectedInterests(String value) {
    SelectedInterests.add(value);
  }

  void removeFromSelectedInterests(String value) {
    SelectedInterests.remove(value);
  }

  void removeAtIndexFromSelectedInterests(int index) {
    SelectedInterests.removeAt(index);
  }

  void updateSelectedInterestsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SelectedInterests[index] = updateFn(_SelectedInterests[index]);
  }

  void insertAtIndexInSelectedInterests(int index, String value) {
    SelectedInterests.insert(index, value);
  }

  bool _FromRegister = true;
  bool get FromRegister => _FromRegister;
  set FromRegister(bool value) {
    _FromRegister = value;
  }

  DateTime? _selectedTime = DateTime.fromMillisecondsSinceEpoch(1748761200000);
  DateTime? get selectedTime => _selectedTime;
  set selectedTime(DateTime? value) {
    _selectedTime = value;
  }

  String _SelectedLocation = '';
  String get SelectedLocation => _SelectedLocation;
  set SelectedLocation(String value) {
    _SelectedLocation = value;
  }

  List<RunTypeStruct> _RunType = [
    RunTypeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Hello World\",\"img\":\"https://picsum.photos/seed/529/600\"}'))
  ];
  List<RunTypeStruct> get RunType => _RunType;
  set RunType(List<RunTypeStruct> value) {
    _RunType = value;
  }

  void addToRunType(RunTypeStruct value) {
    RunType.add(value);
  }

  void removeFromRunType(RunTypeStruct value) {
    RunType.remove(value);
  }

  void removeAtIndexFromRunType(int index) {
    RunType.removeAt(index);
  }

  void updateRunTypeAtIndex(
    int index,
    RunTypeStruct Function(RunTypeStruct) updateFn,
  ) {
    RunType[index] = updateFn(_RunType[index]);
  }

  void insertAtIndexInRunType(int index, RunTypeStruct value) {
    RunType.insert(index, value);
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
