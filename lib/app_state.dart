import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
      _Token = prefs.getString('ff_Token') ?? _Token;
    });
    _safeInit(() {
      _userid = prefs.getString('ff_userid') ?? _userid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _speechToTextResponse = '';
  String get speechToTextResponse => _speechToTextResponse;
  set speechToTextResponse(String value) {
    _speechToTextResponse = value;
  }

  String _audioFileRef = '';
  String get audioFileRef => _audioFileRef;
  set audioFileRef(String value) {
    _audioFileRef = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
  }

  dynamic _leadList;
  dynamic get leadList => _leadList;
  set leadList(dynamic value) {
    _leadList = value;
  }

  List<String> _CompanyList = [];
  List<String> get CompanyList => _CompanyList;
  set CompanyList(List<String> value) {
    _CompanyList = value;
  }

  void addToCompanyList(String value) {
    CompanyList.add(value);
  }

  void removeFromCompanyList(String value) {
    CompanyList.remove(value);
  }

  void removeAtIndexFromCompanyList(int index) {
    CompanyList.removeAt(index);
  }

  void updateCompanyListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    CompanyList[index] = updateFn(_CompanyList[index]);
  }

  void insertAtIndexInCompanyList(int index, String value) {
    CompanyList.insert(index, value);
  }

  String _constraintParam = '';
  String get constraintParam => _constraintParam;
  set constraintParam(String value) {
    _constraintParam = value;
  }

  String _companies = '';
  String get companies => _companies;
  set companies(String value) {
    _companies = value;
  }

  dynamic _listofcompanies;
  dynamic get listofcompanies => _listofcompanies;
  set listofcompanies(dynamic value) {
    _listofcompanies = value;
  }

  List<String> _ScriptList = [' '];
  List<String> get ScriptList => _ScriptList;
  set ScriptList(List<String> value) {
    _ScriptList = value;
  }

  void addToScriptList(String value) {
    ScriptList.add(value);
  }

  void removeFromScriptList(String value) {
    ScriptList.remove(value);
  }

  void removeAtIndexFromScriptList(int index) {
    ScriptList.removeAt(index);
  }

  void updateScriptListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ScriptList[index] = updateFn(_ScriptList[index]);
  }

  void insertAtIndexInScriptList(int index, String value) {
    ScriptList.insert(index, value);
  }

  List<String> _currentCompany = [];
  List<String> get currentCompany => _currentCompany;
  set currentCompany(List<String> value) {
    _currentCompany = value;
  }

  void addToCurrentCompany(String value) {
    currentCompany.add(value);
  }

  void removeFromCurrentCompany(String value) {
    currentCompany.remove(value);
  }

  void removeAtIndexFromCurrentCompany(int index) {
    currentCompany.removeAt(index);
  }

  void updateCurrentCompanyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentCompany[index] = updateFn(_currentCompany[index]);
  }

  void insertAtIndexInCurrentCompany(int index, String value) {
    currentCompany.insert(index, value);
  }

  dynamic _listofScripts = jsonDecode('[]');
  dynamic get listofScripts => _listofScripts;
  set listofScripts(dynamic value) {
    _listofScripts = value;
  }

  String _scriptConstraint = '';
  String get scriptConstraint => _scriptConstraint;
  set scriptConstraint(String value) {
    _scriptConstraint = value;
  }

  String _audio = '';
  String get audio => _audio;
  set audio(String value) {
    _audio = value;
  }

  List<String> _LeadIDList = [];
  List<String> get LeadIDList => _LeadIDList;
  set LeadIDList(List<String> value) {
    _LeadIDList = value;
  }

  void addToLeadIDList(String value) {
    LeadIDList.add(value);
  }

  void removeFromLeadIDList(String value) {
    LeadIDList.remove(value);
  }

  void removeAtIndexFromLeadIDList(int index) {
    LeadIDList.removeAt(index);
  }

  void updateLeadIDListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    LeadIDList[index] = updateFn(_LeadIDList[index]);
  }

  void insertAtIndexInLeadIDList(int index, String value) {
    LeadIDList.insert(index, value);
  }

  String _mainUrl = '';
  String get mainUrl => _mainUrl;
  set mainUrl(String value) {
    _mainUrl = value;
  }

  String _initializeRecording = '';
  String get initializeRecording => _initializeRecording;
  set initializeRecording(String value) {
    _initializeRecording = value;
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String value) {
    _Token = value;
    prefs.setString('ff_Token', value);
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String value) {
    _userid = value;
    prefs.setString('ff_userid', value);
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
