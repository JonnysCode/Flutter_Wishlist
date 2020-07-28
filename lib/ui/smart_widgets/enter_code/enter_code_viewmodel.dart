import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class EnterCodeViewModel extends BaseViewModel {
  TextEditingController codeController;

  void initialize(){
    codeController = TextEditingController();
    notifyListeners();
  }
}