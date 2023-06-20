import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuControllerNotifier extends ChangeNotifier{
  late final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKeyControleur => _globalKey;

  void controlMenu() {
    if (!_globalKey.currentState!.isDrawerOpen) {
      _globalKey.currentState!.openDrawer();
    }
  }
}
