import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  /*** 상태 변경 알림
      1. notifyListeners() 메서드는 ChangeNotifiter 클래스를 상속받은 객체의 상태가 변경되었음을 알려줍니다.
      2. notifyListeners()를 호출하면 Provider는 해당 상태를 구독하고 있는 모든 Listener(즉, 위젯)를 다시 빌드하도록 요청합니다.
      3. Counter 상태가 변경되면 이를 구독하고 있는 Consumer 또는 Provider.of를 사용하는 위젯이 다시 빌드되어 화면에 새로운 값을 보여줍니다.
   ***/

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}