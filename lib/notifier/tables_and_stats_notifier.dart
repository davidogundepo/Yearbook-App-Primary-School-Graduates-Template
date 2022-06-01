
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/TablesAndStats.dart';


class TablesAndStatsNotifier with ChangeNotifier {
  List<TablesAndStats> _tablesAndStatsList = [];
  TablesAndStats _currentTablesAndStats;

  UnmodifiableListView<TablesAndStats> get tablesAndStatsList => UnmodifiableListView(_tablesAndStatsList);

  TablesAndStats get currentTablesAndStats => _currentTablesAndStats;

  set tablesAndStatsList(List<TablesAndStats> tablesAndStatsList) {
    _tablesAndStatsList = tablesAndStatsList;
    notifyListeners();
  }

  set currentTablesAndStats(TablesAndStats tablesAndStats) {
    _currentTablesAndStats = tablesAndStats;
    notifyListeners();
  }

}