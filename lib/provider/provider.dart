import 'package:flutter/cupertino.dart';

class stepper_provider extends ChangeNotifier{

  int i=0;

  void Nextstep()
  {
    if(i<9)
    {
      i++;
    }
    notifyListeners();
  }
  void prestep()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }

}