import 'package:flutter/cupertino.dart';
import 'package:flutter_service/service_locator.dart';
import 'package:flutter_service/storage_service.dart';

class CounterViewModel extends ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;
  
  StorageService _storageService = locator<StorageService>();

Future loadData() async{
  _counter= await _storageService.getCounterValue();
  notifyListeners();
}
  void increment(){
    _counter++;
    _storageService.saveCounterValue(_counter);
    notifyListeners();
  }

   void decrement(){
    _counter--;
    _storageService.saveCounterValue(_counter);
    notifyListeners();
  }
}