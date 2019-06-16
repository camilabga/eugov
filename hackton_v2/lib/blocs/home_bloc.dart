import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final _page = BehaviorSubject<int>.seeded(0);

  Observable<int> get page => _page.stream;
  Function(int) get setPage => _page.sink.add;

  dispose() {
    _page.close();
  }
}