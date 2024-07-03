import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _clientId = prefs.getString('ff_clientId') ?? _clientId;
    });
    _safeInit(() {
      _userId = prefs.getString('ff_userId') ?? _userId;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _benefitId = prefs.getString('ff_benefitId') ?? _benefitId;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectedNps')) {
        try {
          final serializedData = prefs.getString('ff_selectedNps') ?? '{}';
          _selectedNps =
              NpsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _clientId = '';
  String get clientId => _clientId;
  set clientId(String value) {
    _clientId = value;
    prefs.setString('ff_clientId', value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    prefs.setString('ff_userId', value);
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  List<BannerStruct> _banners = [];
  List<BannerStruct> get banners => _banners;
  set banners(List<BannerStruct> value) {
    _banners = value;
  }

  void addToBanners(BannerStruct value) {
    banners.add(value);
  }

  void removeFromBanners(BannerStruct value) {
    banners.remove(value);
  }

  void removeAtIndexFromBanners(int index) {
    banners.removeAt(index);
  }

  void updateBannersAtIndex(
    int index,
    BannerStruct Function(BannerStruct) updateFn,
  ) {
    banners[index] = updateFn(_banners[index]);
  }

  void insertAtIndexInBanners(int index, BannerStruct value) {
    banners.insert(index, value);
  }

  BannerStruct _selectedBanner = BannerStruct();
  BannerStruct get selectedBanner => _selectedBanner;
  set selectedBanner(BannerStruct value) {
    _selectedBanner = value;
  }

  void updateSelectedBannerStruct(Function(BannerStruct) updateFn) {
    updateFn(_selectedBanner);
  }

  List<FeedbackStruct> _feedbacks = [];
  List<FeedbackStruct> get feedbacks => _feedbacks;
  set feedbacks(List<FeedbackStruct> value) {
    _feedbacks = value;
  }

  void addToFeedbacks(FeedbackStruct value) {
    feedbacks.add(value);
  }

  void removeFromFeedbacks(FeedbackStruct value) {
    feedbacks.remove(value);
  }

  void removeAtIndexFromFeedbacks(int index) {
    feedbacks.removeAt(index);
  }

  void updateFeedbacksAtIndex(
    int index,
    FeedbackStruct Function(FeedbackStruct) updateFn,
  ) {
    feedbacks[index] = updateFn(_feedbacks[index]);
  }

  void insertAtIndexInFeedbacks(int index, FeedbackStruct value) {
    feedbacks.insert(index, value);
  }

  List<BenefitStruct> _benefits = [];
  List<BenefitStruct> get benefits => _benefits;
  set benefits(List<BenefitStruct> value) {
    _benefits = value;
  }

  void addToBenefits(BenefitStruct value) {
    benefits.add(value);
  }

  void removeFromBenefits(BenefitStruct value) {
    benefits.remove(value);
  }

  void removeAtIndexFromBenefits(int index) {
    benefits.removeAt(index);
  }

  void updateBenefitsAtIndex(
    int index,
    BenefitStruct Function(BenefitStruct) updateFn,
  ) {
    benefits[index] = updateFn(_benefits[index]);
  }

  void insertAtIndexInBenefits(int index, BenefitStruct value) {
    benefits.insert(index, value);
  }

  BenefitsDataStruct _benefitsData = BenefitsDataStruct();
  BenefitsDataStruct get benefitsData => _benefitsData;
  set benefitsData(BenefitsDataStruct value) {
    _benefitsData = value;
  }

  void updateBenefitsDataStruct(Function(BenefitsDataStruct) updateFn) {
    updateFn(_benefitsData);
  }

  SelectedBenefitStruct _selectedBenefit = SelectedBenefitStruct();
  SelectedBenefitStruct get selectedBenefit => _selectedBenefit;
  set selectedBenefit(SelectedBenefitStruct value) {
    _selectedBenefit = value;
  }

  void updateSelectedBenefitStruct(Function(SelectedBenefitStruct) updateFn) {
    updateFn(_selectedBenefit);
  }

  String _benefitId = '';
  String get benefitId => _benefitId;
  set benefitId(String value) {
    _benefitId = value;
    prefs.setString('ff_benefitId', value);
  }

  List<NpsStruct> _nps = [];
  List<NpsStruct> get nps => _nps;
  set nps(List<NpsStruct> value) {
    _nps = value;
  }

  void addToNps(NpsStruct value) {
    nps.add(value);
  }

  void removeFromNps(NpsStruct value) {
    nps.remove(value);
  }

  void removeAtIndexFromNps(int index) {
    nps.removeAt(index);
  }

  void updateNpsAtIndex(
    int index,
    NpsStruct Function(NpsStruct) updateFn,
  ) {
    nps[index] = updateFn(_nps[index]);
  }

  void insertAtIndexInNps(int index, NpsStruct value) {
    nps.insert(index, value);
  }

  NpsStruct _selectedNps = NpsStruct();
  NpsStruct get selectedNps => _selectedNps;
  set selectedNps(NpsStruct value) {
    _selectedNps = value;
    prefs.setString('ff_selectedNps', value.serialize());
  }

  void updateSelectedNpsStruct(Function(NpsStruct) updateFn) {
    updateFn(_selectedNps);
    prefs.setString('ff_selectedNps', _selectedNps.serialize());
  }

  SelectedFeedbackStruct _selectedFeedback = SelectedFeedbackStruct();
  SelectedFeedbackStruct get selectedFeedback => _selectedFeedback;
  set selectedFeedback(SelectedFeedbackStruct value) {
    _selectedFeedback = value;
  }

  void updateSelectedFeedbackStruct(Function(SelectedFeedbackStruct) updateFn) {
    updateFn(_selectedFeedback);
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
  }

  ClientStruct _client = ClientStruct();
  ClientStruct get client => _client;
  set client(ClientStruct value) {
    _client = value;
  }

  void updateClientStruct(Function(ClientStruct) updateFn) {
    updateFn(_client);
  }

  List<ProfileStruct> _profiles = [];
  List<ProfileStruct> get profiles => _profiles;
  set profiles(List<ProfileStruct> value) {
    _profiles = value;
  }

  void addToProfiles(ProfileStruct value) {
    profiles.add(value);
  }

  void removeFromProfiles(ProfileStruct value) {
    profiles.remove(value);
  }

  void removeAtIndexFromProfiles(int index) {
    profiles.removeAt(index);
  }

  void updateProfilesAtIndex(
    int index,
    ProfileStruct Function(ProfileStruct) updateFn,
  ) {
    profiles[index] = updateFn(_profiles[index]);
  }

  void insertAtIndexInProfiles(int index, ProfileStruct value) {
    profiles.insert(index, value);
  }

  ProfileStruct _selectedProfile = ProfileStruct();
  ProfileStruct get selectedProfile => _selectedProfile;
  set selectedProfile(ProfileStruct value) {
    _selectedProfile = value;
  }

  void updateSelectedProfileStruct(Function(ProfileStruct) updateFn) {
    updateFn(_selectedProfile);
  }

  List<RevenueListStruct> _revenues = [];
  List<RevenueListStruct> get revenues => _revenues;
  set revenues(List<RevenueListStruct> value) {
    _revenues = value;
  }

  void addToRevenues(RevenueListStruct value) {
    revenues.add(value);
  }

  void removeFromRevenues(RevenueListStruct value) {
    revenues.remove(value);
  }

  void removeAtIndexFromRevenues(int index) {
    revenues.removeAt(index);
  }

  void updateRevenuesAtIndex(
    int index,
    RevenueListStruct Function(RevenueListStruct) updateFn,
  ) {
    revenues[index] = updateFn(_revenues[index]);
  }

  void insertAtIndexInRevenues(int index, RevenueListStruct value) {
    revenues.insert(index, value);
  }

  RevenueStruct _selectedRevenue = RevenueStruct();
  RevenueStruct get selectedRevenue => _selectedRevenue;
  set selectedRevenue(RevenueStruct value) {
    _selectedRevenue = value;
  }

  void updateSelectedRevenueStruct(Function(RevenueStruct) updateFn) {
    updateFn(_selectedRevenue);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
