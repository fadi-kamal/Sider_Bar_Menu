import 'package:flutter/material.dart';

class MoveIcons extends ChangeNotifier {
  // Start Double items
  double home = 25;
  double person = 5;
  double setting = 5;
  double contact = 5;
  double login = 5;
  double notifcation = 5;
  double width = 65;

  get showHome => home;

  getWidth() {
    width = 220;
    notifyListeners();
  }

  getDefulatWidth() {
    width = 65;
    notifyListeners();
  }

  getHome() {
    home = 25;
    person = 5;
    setting = 5;
    contact = 5;
    login = 5;
    notifcation = 5;
    notifyListeners();
  }

  getPerson() {
    person = 25;
    home = 5;
    setting = 5;
    contact = 5;
    login = 5;
    notifcation = 5;
    notifyListeners();
  }

  getSetting() {
    setting = 25;
    person = 5;
    home = 5;
    contact = 5;
    login = 5;
    notifcation = 5;
    notifyListeners();
  }

  getLogin() {
    login = 25;
    home = 5;
    person = 5;
    setting = 5;
    contact = 5;
    notifcation = 5;
    notifyListeners();
  }

  getContact() {
    contact = 25;
    home = 5;
    person = 5;
    setting = 5;
    login = 5;
    notifcation = 5;
    notifyListeners();
  }

  getNotifcation() {
    notifcation = 25;
    home = 5;
    person = 5;
    setting = 5;
    login = 5;
    contact = 5;
    notifyListeners();
  }

  // End Double items
// Start String items
  String xHome = "";
  String xPerson = "";
  String xSetting = "";
  String xContact = "";
  String xLogin = "";
  String xNotifcation = "";

  LableText() {
    xHome = "Home";
    xPerson = "Person";
    xSetting = "Setting";
    xContact = "Contact";
    xLogin = "LogIn";
    xNotifcation = "Notifcation";
    notifyListeners();
  }

  LableDefualt() {
    xHome = "";
    xPerson = "";
    xSetting = "";
    xContact = "";
    xLogin = "";
    xNotifcation = "";
    notifyListeners();
  }

// End String items
// Start ColorBox items
  Color homeColor = Color.fromRGBO(255, 138, 174, 1);
  Color? personColor;
  Color? settingColor;
  Color? contactColor;
  Color? logInColor;
  Color? notifcationColor;

  gethomeColor() {
    homeColor = Color.fromRGBO(255, 138, 174, 1);
    personColor = Colors.transparent;
    settingColor = Colors.transparent;
    contactColor = Colors.transparent;
    logInColor = Colors.transparent;
    notifcationColor = Colors.transparent;
    notifyListeners();
  }

  getpersonColor() {
    personColor = Color.fromRGBO(102, 191, 191, 1);
    homeColor = Colors.transparent;
    settingColor = Colors.transparent;
    contactColor = Colors.transparent;
    logInColor = Colors.transparent;
    notifcationColor = Colors.transparent;
    notifyListeners();
  }

  getsettingColor() {
    settingColor = Color.fromRGBO(102, 191, 191, 1);
    homeColor = Colors.transparent;
    personColor = Colors.transparent;
    contactColor = Colors.transparent;
    logInColor = Colors.transparent;
    notifcationColor = Colors.transparent;
    notifyListeners();
  }

  getcontactColor() {
    contactColor = Color.fromRGBO(238, 129, 179, 1);
    homeColor = Colors.transparent;
    personColor = Colors.transparent;
    settingColor = Colors.transparent;
    logInColor = Colors.transparent;
    notifcationColor = Colors.transparent;
    notifyListeners();
  }

  getlogInColor() {
    logInColor = Color.fromRGBO(115, 169, 173, 1);
    personColor = Colors.transparent;
    settingColor = Colors.transparent;
    contactColor = Colors.transparent;
    homeColor = Colors.transparent;
    notifcationColor = Colors.transparent;
    notifyListeners();
  }

  getnotifcationColor() {
    notifcationColor = Color.fromRGBO(144, 200, 172, 1);
    personColor = Colors.transparent;
    settingColor = Colors.transparent;
    contactColor = Colors.transparent;
    logInColor = Colors.transparent;
    homeColor = Colors.transparent;
    notifyListeners();
  }

  // End ColorBox items
  // start TextBox items
  Color homeText = Color.fromRGBO(255, 138, 174, 1);
  Color personText = Colors.black;
  Color settingText = Colors.black;
  Color contactText = Colors.black;
  Color logInText = Colors.black;
  Color notifcationText = Colors.black;
  getHomeText() {
    homeText = Color.fromRGBO(255, 138, 174, 1);
    personText = Colors.black;
    settingText = Colors.black;
    contactText = Colors.black;
    logInText = Colors.black;
    notifcationText = Colors.black;
    notifyListeners();
  }

  getPersonText() {
    personText = Color.fromRGBO(102, 191, 191, 1);
    homeText = Colors.black;
    settingText = Colors.black;
    contactText = Colors.black;
    logInText = Colors.black;
    notifcationText = Colors.black;
    notifyListeners();
  }

  getSettingText() {
    settingText = Color.fromRGBO(102, 191, 191, 1);
    homeText = Colors.black;
    personText = Colors.black;
    contactText = Colors.black;
    logInText = Colors.black;
    notifcationText = Colors.black;
    notifyListeners();
  }

  getContactText() {
    contactText = Color.fromRGBO(238, 129, 179, 1);
    homeText = Colors.black;
    personText = Colors.black;
    settingText = Colors.black;
    logInText = Colors.black;
    notifcationText = Colors.black;
    notifyListeners();
  }

  getLogInText() {
    logInText = Color.fromRGBO(115, 169, 173, 1);
    contactText = Colors.black;
    homeText = Colors.black;
    personText = Colors.black;
    settingText = Colors.black;
    notifcationText = Colors.black;
    notifyListeners();
  }

  getNotifcationText() {
    notifcationText = Color.fromRGBO(144, 200, 172, 1);
    contactText = Colors.black;
    homeText = Colors.black;
    personText = Colors.black;
    settingText = Colors.black;
    logInText = Colors.black;
    notifyListeners();
  }
  // End TextBox items
}
