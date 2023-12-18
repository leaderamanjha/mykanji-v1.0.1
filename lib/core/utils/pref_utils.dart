// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setEmailsucess(String value) {
    return _sharedPreferences!.setString('Emailsucess', value);
  }

  String getEmailsucess() {
    try {
      return _sharedPreferences!.getString('Emailsucess') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setLoginwithuserid(String value) {
    return _sharedPreferences!.setString('loginwithuserid', value);
  }

  String getLoginwithuserid() {
    try {
      return _sharedPreferences!.getString('loginwithuserid') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setOtpSucess(String value) {
    return _sharedPreferences!.setString('otpSucess', value);
  }

  String getOtpSucess() {
    try {
      return _sharedPreferences!.getString('otpSucess') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setRegistrationSucess(String value) {
    return _sharedPreferences!.setString('registrationSucess', value);
  }

  String getRegistrationSucess() {
    try {
      return _sharedPreferences!.getString('registrationSucess') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setResetpass(String value) {
    return _sharedPreferences!.setString('resetpass', value);
  }

  String getResetpass() {
    try {
      return _sharedPreferences!.getString('resetpass') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setToken(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  String getToken() {
    try {
      return _sharedPreferences!.getString('token') ?? '';
    } catch (e) {
      return '';
    }
  }
}
