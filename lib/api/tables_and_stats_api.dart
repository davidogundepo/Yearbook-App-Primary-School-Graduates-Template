import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/TablesAndStats.dart';
import '../notifier/tables_and_stats_notifier.dart';


getTablesAndStats(TablesAndStatsNotifier tablesAndStatsNotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('TablesAndStats')
      .orderBy('goals_scored')
      .get();

  List<TablesAndStats> _tablesAndStatsList = [];

  snapshot.docs.forEach((document) {
    TablesAndStats tablesAndStats = TablesAndStats.fromMap(document.data());
    _tablesAndStatsList.add(tablesAndStats);
  });

  tablesAndStatsNotifier.tablesAndStatsList = _tablesAndStatsList;

  // Stream<QuerySnapshot> getStream() {
  //   return snapshot.orderBy('employeeID', descending: false).snapshots();
  // }
}
