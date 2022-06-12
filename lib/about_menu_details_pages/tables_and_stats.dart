
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/TablesAndStats.dart';
import '../notifier/tables_and_stats_notifier.dart';



Color backgroundColor = Color.fromRGBO(120, 97, 128, 1.0);
Color cardBackgroundColor = Color.fromRGBO(99, 78, 107, 1.0);
Color appBarIconColor = Color.fromRGBO(158, 134, 169, 1.0);
Color appBarTextColor = Color.fromRGBO(158, 134, 169, 1.0);
Color appBarBackgroundColor = Color.fromRGBO(99, 78, 107, 1.0);
Color cardBottomColor = Color.fromRGBO(158, 134, 169, 1.0);
Color cardTextColor = Colors.white70;
Color splashColor = Color.fromRGBO(99, 78, 107, 1.0);
Color boxDecorationColor = Color.fromRGBO(92, 70, 103, 1.0);
Color chartBackgroundColor = Colors.grey[200];
Color materialColor = Colors.transparent;
Color textColor = Color.fromRGBO(99, 78, 107, 1.0);
Color firstSchoolChartColor = Color.fromRGBO(158, 134, 169, 1.0);
Color secondSchoolChartColor = Color.fromRGBO(53, 73, 95, 1.0);
Color thirdSchoolChartColor = Color.fromRGBO(90, 111, 129, 1.0);
Color fourthSchoolChartColor = Color.fromRGBO(159, 76, 76, 1.0);
Color firstStudentChartColor = Color.fromRGBO(158, 134, 169, 1.0);
Color secondStudentChartColor = Color.fromRGBO(53, 73, 95, 1.0);


TablesAndStatsNotifier tablesAndStatsNotifier;


class TablesAndStatsDetails extends StatefulWidget {

  TablesAndStatsDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TablesAndStatsDetailsState createState() => _TablesAndStatsDetailsState();
}


class _TablesAndStatsDetailsState extends State<TablesAndStatsDetails> {

  List<TablesAndStats> tablesAndStatsList = [];

  TablesAndStatsDataSource tablesAndStatsDataSource;



  // getDataFromDatabase() async {
  //   // var value = FirebaseDatabase.instance.reference();
  //   var value = FirebaseFirestore.instance.collection('TablesAndStats').get();
  //   // var getValue = await value.child('TablesAndStats').once();
  //   return value;
  // }


  @override
  void initState() {

    // getDataFromFirestore();
    tablesAndStatsNotifier = Provider.of<TablesAndStatsNotifier>(context, listen: false);
    // getTablesAndStats(tablesAndStatsNotifier);

    super.initState();
    // getTablesAndStats(tablesAndStatsNotifier);

  }


  // Future<void> getDataFromFirestore() async {
  //
  //     var value = await databaseReference.collection('TablesAndStats').get();
  //
  //     List<TablesAndStats> tablesAndStatsList = value.docs
  //         .map((e) => TablesAndStats(
  //         id: e.data()['id'],
  //         playerName: e.data()['player_name'],
  //         matchesPlayed: e.data()['matches_played'],
  //         goalsScored: e.data()['goals_scored'],
  //         assists: e.data()['assists'],
  //         playerPosition: e.data()['player_position'],
  //         yellowCard: e.data()['yellow_card'],
  //         redCard: e.data()['red_card'],
  //         nationality: e.data()['nationality']))
  //         .toList();
  //     setState(() {
  //       tablesAndStatsDataSource = TablesAndStatsDataSource(tablesAndStatsList);
  //     });
  //
  //     // return value;
  //
  //
  // }




  @override
  Widget build(BuildContext context) {
    // TablesAndStatsNotifier tablesAndStatsNotifier = Provider.of<TablesAndStatsNotifier>(context);

    // CollectionReference collectionReference = FirebaseFirestore.instance.c

    // return Scaffold(
    //   backgroundColor: backgroundColor,
    //   appBar: AppBar(
    //       centerTitle: true,
    //       title: Text('Tables and Stats',
    //           style: TextStyle(
    //               color: appBarIconColor
    //           )
    //       ),
    //       leading: IconButton(
    //         icon: Icon(Icons.arrow_back_ios, color: appBarIconColor),
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //       ),
    //       elevation: 10,
    //       backgroundColor: appBarBackgroundColor,
    //     ),
    //   body: Container(
    //     height: 700,
    //     child: Material(
    //
    //       child: FutureBuilder(
    //         future: getDataFromDatabase(),
    //         builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //
    //           if (snapshot.hasData) {
    //             var showData = snapshot.data;
    //             Map<dynamic, dynamic> values = showData.value;
    //             List<dynamic> key = values.keys.toList();
    //
    //             for (int i = 0; i < key.length; i++) {
    //               final data = values[key[i]];
    //               tablesAndStatsList.add(TablesAndStats(
    //                   data['id'],
    //                   data['player_Name'],
    //                   data['matches_played'],
    //                   data['goals_scored'],
    //                   data['assists'],
    //                   data['player_position'],
    //                   data['yellow_card'],
    //                   data['red_card'],
    //                   data['nationality']));
    //
    //                       id: data['id'],
    //                   playerName: data['player_Name'],
    //                   matchesPlayed: data['matches_played'],
    //                   goalsScored: data['goals_scored'],
    //                   assists: data['assists'],
    //                   playerPosition: data['player_position'],
    //                   yellowCard: data['yellow_card'],
    //                   redCard: data['red_card'],
    //                   nationality: data['nationality']));
    //             }
    //             tablesAndStatsDataSource = TablesAndStatsDataSource(tablesAndStatsList);
    //
    //             // return Text ('fjd');
    //
    //             return SfDataGrid(
    //             source: tablesAndStatsDataSource,
    //             frozenColumnsCount: 2,
    //             frozenRowsCount: 0,
    //             allowSorting: true,
    //             columnWidthMode: ColumnWidthMode.fill,
    //             columns: <GridColumn>[
    //             GridColumn(
    //             columnName: 'id',
    //             width: 40,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text(
    //             'ID',
    //             ))),
    //             GridColumn(
    //             columnName: 'player_name',
    //             width: 100,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Player\nName'))),
    //             GridColumn(
    //             columnName: 'matches_played',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text(
    //             'Matches\nPlayed',
    //             overflow: TextOverflow.ellipsis,
    //             ))),
    //             GridColumn(
    //             columnName: 'goals_scored',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Goals\nScored'))),
    //             GridColumn(
    //             columnName: 'assists',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Assists'))),
    //             GridColumn(
    //             columnName: 'player_position',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Player\nPosition'))),
    //             GridColumn(
    //             columnName: 'yellow_card',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Yellow\nCard'))),
    //             GridColumn(
    //             columnName: 'red_card',
    //             width: 70,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Red\nCard'))),
    //             GridColumn(
    //             columnName: 'nationality',
    //             width: 80,
    //             label: Container(
    //             alignment: Alignment.center,
    //             child: Text('Nationality '))),
    //             ],
    //             );
    //
    //             // TablesAndStats(
    //             // id: data['id'],
    //             // playerName: data['player_Name'],
    //             // matchesPlayed: data['matches_played'],
    //             // goalsScored: data['goals_scored'])),
    //             // assists: data['assists'])),
    //             // playerPosition: data['player_position'])),
    //             // yellowCard: data['yellow_card'])),
    //             // redCard: data['red_card'])),
    //             // nationality: data['nationality']));
    //
    //
    //             // TablesAndStats(
    //                   // id: data['id'],
    //                   // playerName: data['player_Name'],
    //                   // matchesPlayed: data['matches_played'],
    //                   // goalsScored: data['goals_scored'])),
    //                   // assists: data['assists'])),
    //                   // playerPosition: data['player_position'])),
    //                   // yellowCard: data['yellow_card'])),
    //                   // redCard: data['red_card'])),
    //                   // nationality: data['nationality']));
    //
    //             }
    //           else {
    //             return Center (
    //               child: CircularProgressIndicator(),
    //             );
    //           }
    //           // return Text ('fv');
    //         },
    //
    //           // return SfDataGrid(
    //           // source: tablesAndStatsDataSource,
    //           // frozenColumnsCount: 2,
    //           // frozenRowsCount: 0,
    //           // allowSorting: true,
    //           // columnWidthMode: ColumnWidthMode.fill,
    //           // columns: <GridColumn>[
    //           // GridColumn(
    //           // columnName: 'id',
    //           // width: 40,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text(
    //           // 'ID',
    //           // ))),
    //           // GridColumn(
    //           // columnName: 'player_name',
    //           // width: 100,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Player\nName'))),
    //           // GridColumn(
    //           // columnName: 'matches_played',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text(
    //           // 'Matches\nPlayed',
    //           // overflow: TextOverflow.ellipsis,
    //           // ))),
    //           // GridColumn(
    //           // columnName: 'goals_scored',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Goals\nScored'))),
    //           // GridColumn(
    //           // columnName: 'assists',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Assists'))),
    //           // GridColumn(
    //           // columnName: 'player_position',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Player\nPosition'))),
    //           // GridColumn(
    //           // columnName: 'yellow_card',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Yellow\nCard'))),
    //           // GridColumn(
    //           // columnName: 'red_card',
    //           // width: 70,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Red\nCard'))),
    //           // GridColumn(
    //           // columnName: 'nationality',
    //           // width: 80,
    //           // label: Container(
    //           // alignment: Alignment.center,
    //           // child: Text('Nationality '))),
    //           // ],
    //           // );
    //       ),
    //     ),
    //     // FutureBuilder(
    //     //     future: null, //getTablesAndStats(tablesAndStatsNotifier),
    //     //     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //     //
    //             // if (snapshot.hasData) {
    //             //   final List<DocumentSnapshot> documents = snapshot.data.docs;
    //
    //           // return
    // // SfDataGrid(
    // //                 source: tablesAndStatsDataSource,
    // //                 frozenColumnsCount: 2,
    // //                 frozenRowsCount: 0,
    // //                 allowSorting: true,
    // //                 columnWidthMode: ColumnWidthMode.fill,
    // //                 columns: <GridColumn>[
    // //                   GridColumn(
    // //                       columnName: 'id',
    // //                       width: 40,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text(
    // //                             'ID',
    // //                           ))),
    // //                   GridColumn(
    // //                       columnName: 'player_name',
    // //                       width: 100,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Player\nName'))),
    // //                   GridColumn(
    // //                       columnName: 'matches_played',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text(
    // //                             'Matches\nPlayed',
    // //                             overflow: TextOverflow.ellipsis,
    // //                           ))),
    // //                   GridColumn(
    // //                       columnName: 'goals_scored',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Goals\nScored'))),
    // //                   GridColumn(
    // //                       columnName: 'assists',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Assists'))),
    // //                   GridColumn(
    // //                       columnName: 'player_position',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Player\nPosition'))),
    // //                   GridColumn(
    // //                       columnName: 'yellow_card',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Yellow\nCard'))),
    // //                   GridColumn(
    // //                       columnName: 'red_card',
    // //                       width: 70,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Red\nCard'))),
    // //                   GridColumn(
    // //                       columnName: 'nationality',
    // //                       width: 80,
    // //                       label: Container(
    // //                           alignment: Alignment.center,
    // //                           child: Text('Nationality '))),
    // //                 ],
    // //               ),
    //         // }
    //             // else if (snapshot.hasError) {
    //             //   return Text('Error');
    //             // }
    //
    //             // if (snapshot.hasData) {
    //             //   var showData = snapshot.data;
    //             //   Map<dynamic, dynamic> values = showData.value;
    //             //   List<dynamic> key = values.keys.toList();
    //             //
    //             // }
    //             //   tablesAndStatsDataSource = TablesAndStatsDataSource(tablesAndStatsList);
    //             //   return Text('data');
    //
    //               //   SfDataGrid(
    //               //   source: tablesAndStatsDataSource,
    //               //   frozenColumnsCount: 2,
    //               //   frozenRowsCount: 0,
    //               //   allowSorting: true,
    //               //   columnWidthMode: ColumnWidthMode.fill,
    //               //   columns: <GridColumn>[
    //               //     GridColumn(
    //               //         columnName: 'id',
    //               //         width: 40,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text(
    //               //               'ID',
    //               //             ))),
    //               //     GridColumn(
    //               //         columnName: 'player_name',
    //               //         width: 100,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Player\nName'))),
    //               //     GridColumn(
    //               //         columnName: 'matches_played',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text(
    //               //               'Matches\nPlayed',
    //               //               overflow: TextOverflow.ellipsis,
    //               //             ))),
    //               //     GridColumn(
    //               //         columnName: 'goals_scored',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Goals\nScored'))),
    //               //     GridColumn(
    //               //         columnName: 'assists',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Assists'))),
    //               //     GridColumn(
    //               //         columnName: 'player_position',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Player\nPosition'))),
    //               //     GridColumn(
    //               //         columnName: 'yellow_card',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Yellow\nCard'))),
    //               //     GridColumn(
    //               //         columnName: 'red_card',
    //               //         width: 70,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Red\nCard'))),
    //               //     GridColumn(
    //               //         columnName: 'nationality',
    //               //         width: 80,
    //               //         label: Container(
    //               //             alignment: Alignment.center,
    //               //             child: Text('Nationality '))),
    //               //   ],
    //               // );
    //   ),
    //   //   ),
    //   // ),
    //   // SingleChildScrollView(
    //   //   child: Column(
    //   //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //   //     children: [
    //   //       Padding(
    //   //       padding: const EdgeInsets.all(8.0),
    //   //         child: Container(
    //   //           child: Material(
    //   //             color: materialColor,
    //   //             child: SingleChildScrollView(
    //   //               scrollDirection: Axis.horizontal,
    //   //               child: SfDataGrid(
    //   //                 source: tablesAndStatsDataSource,
    //   //                 columnWidthMode: ColumnWidthMode.fill,
    //   //                 columns: <GridColumn>[
    //   //                   GridColumn(
    //   //                       columnName: 'id',
    //   //                       label: Container(
    //   //                           padding: EdgeInsets.all(16.0),
    //   //                           alignment: Alignment.center,
    //   //                           child: Text(
    //   //                             'ID',
    //   //                           ))),
    //   //                   GridColumn(
    //   //                       columnName: 'name',
    //   //                       label: Container(
    //   //                           padding: EdgeInsets.all(8.0),
    //   //                           alignment: Alignment.center,
    //   //                           child: Text('Name'))),
    //   //                   GridColumn(
    //   //                       columnName: 'designation',
    //   //                       label: Container(
    //   //                           padding: EdgeInsets.all(8.0),
    //   //                           alignment: Alignment.center,
    //   //                           child: Text(
    //   //                             'Designation',
    //   //                             overflow: TextOverflow.ellipsis,
    //   //                           ))),
    //   //                   GridColumn(
    //   //                       columnName: 'salary',
    //   //                       label: Container(
    //   //                           padding: EdgeInsets.all(8.0),
    //   //                           alignment: Alignment.center,
    //   //                           child: Text('Salary'))),
    //   //                 ],
    //   //               ),
    //   //
    //   //               // child: DataTable(
    //   //               //   sortColumnIndex: 0,
    //   //               //   sortAscending: true,
    //   //               //   columns: [
    //   //               //     DataColumn(label: Text('ID')), //Text('ID')),
    //   //               //     DataColumn(label: Text('PN')), //Text('Player Name')),
    //   //               //     DataColumn(label: Text('MP')), //Text('Matches Played')),
    //   //               //     DataColumn(label: Text('GS')), //Text('Goals')),
    //   //               //     DataColumn(label: Text('A')), //Text('Assists')),
    //   //               //     DataColumn(label: Text('PP')), //Text('Player Position')),
    //   //               //     DataColumn(label: Text('YC')), //Text('Yellow Card')),
    //   //               //     DataColumn(label: Text('RC')), //Text('Red Card')),
    //   //               //     DataColumn(label: Text('N')), //Text('Nationality')),
    //   //               // ],
    //   //               //   rows: [
    //   //               //     DataRow(cells: <DataCell>[
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Marcus Smith')),
    //   //               //     DataCell(Text('11')),
    //   //               //     DataCell(Text('8')),
    //   //               //     DataCell(Text('6')),
    //   //               //     DataCell(Text('Right Wing')),
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('0')),
    //   //               //     DataCell(Text('British')),
    //   //               //     ]),
    //   //               //     DataRow(cells: <DataCell>[
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Femi Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('3')),
    //   //               //     DataCell(Text('Daniel Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //     DataRow(cells: [
    //   //               //     DataCell(Text('2')),
    //   //               //     DataCell(Text('Tyler Watkins')),
    //   //               //     DataCell(Text('14')),
    //   //               //     DataCell(Text('10')),
    //   //               //     DataCell(Text('4')),
    //   //               //     DataCell(Text('Striker')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('1')),
    //   //               //     DataCell(Text('Nigerian')),
    //   //               //     ]),
    //   //               //   ],
    //   //               // ),
    //   //             ),
    //   //           ),
    //   //           decoration: BoxDecoration(
    //   //               color: boxDecorationColor.withAlpha(50),
    //   //               borderRadius: new BorderRadius.circular(4)
    //   //           ),
    //   //         ),
    //   //       ),
    //   //     ],
    //   //   ),
    //   // )
    //
    //   //   if (snapshot.hasData) {
    //   // var showData = snapshot.data;
    //   // Map<dynamic, dynamic> values = showData.value;
    //   // List<dynamic> key = values.keys.toList();
    //   //
    //   // for (int i = 0; i < key.length; i++) {
    //   //   final data = values[key[i]];
    //   //   tablesAndStatsList.add(TablesAndStats(
    //   //       id: data['id'],
    //   //       playerName: data['id'],
    //   //       matchesPlayed: data['id'],
    //   //       goalsScored: data['id'],
    //   //       assists: data['id'],
    //   //       playerPosition: data['id'],
    //   //       yellowCard: data['id'],
    //   //       redCard: data['id'],
    //   //       nationality: data['id']));
    //   // }
    //
    // );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tables and Stats',
            style: TextStyle(
                color: appBarIconColor
            )
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: appBarIconColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 10,
        backgroundColor: appBarBackgroundColor,
      ),
      body: Container(
        height: 700,
        child: Material(
          color: secondStudentChartColor,
          child: SfDataGrid(
                  source: tablesAndStatsDataSource,
                  frozenColumnsCount: 2,
                  frozenRowsCount: 0,
                  allowSorting: true,
                  columnWidthMode: ColumnWidthMode.fill,
                  columns: <GridColumn>[
                    GridColumn(
                        columnName: 'id',
                        width: 40,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'ID',
                            ))),
                    GridColumn(
                        columnName: 'player_name',
                        width: 100,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Player\nName'))),
                    GridColumn(
                        columnName: 'matches_played',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Matches\nPlayed',
                              overflow: TextOverflow.ellipsis,
                            ))),
                    GridColumn(
                        columnName: 'goals_scored',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Goals\nScored'))),
                    GridColumn(
                        columnName: 'assists',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Assists'))),
                    GridColumn(
                        columnName: 'player_position',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Player\nPosition'))),
                    GridColumn(
                        columnName: 'yellow_card',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Yellow\nCard'))),
                    GridColumn(
                        columnName: 'red_card',
                        width: 70,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Red\nCard'))),
                    GridColumn(
                        columnName: 'nationality',
                        width: 80,
                        label: Container(
                            alignment: Alignment.center,
                            child: Text('Nationality '))),
                  ],
                ),
        ),
      )

    );
  }

  // List<TablesAndStats> getTablesAndStatsData() {
  //
  //   // return
  //   //   [
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //   TablesAndStats('1', 'James Jerry', '8', '10', '3', 'CF', '2', '0', 'British'),
    //


      // TablesAndStats('2', 'Kath Kelp', 9, 5, 2, 'CM', 1, 0, 'British'),
      // TablesAndStats('3', 'Lara Kelp', 12, 13, 1, 'CF', 3, 1, 'Nigerian'),
      // TablesAndStats('4', 'Michael Kelp', 12, 19, 2, 'CAM', 1, 2, 'Scottish'),
      // TablesAndStats('5', 'Martin Kelp', 5, 6, 4, 'CM', 3, 1, 'Pakistani'),
      // TablesAndStats('6', 'Nerry Kelp', 9, 8, 1, 'CM', 2, 4, 'Indian'),
      // TablesAndStats('7', 'Balnc Kelp', 8, 9, 6, 'LW', 1, 3, 'American'),
      // TablesAndStats('8', 'Perry Kelp', 10, 14, 3, 'RW', 2, 2, 'French'),
      // TablesAndStats('9', 'Gable Kelp', 10, 4, 5, 'CDM', 4, 4, 'German'),
      // TablesAndStats('10', 'Grimes Kelp', 12, 3, 4, 'CB', 3, 2, 'Croatian'),
      // TablesAndStats('11', 'Qrimes Kelp', 12, 6, 6, 'CM', 2, 1, 'British'),
      // TablesAndStats('12', 'Wrimes Kelp', 8, 9, 1, 'CM', 2, 0, 'British'),
      // TablesAndStats('13', 'Drimes Kelp', 4, 1, 4, 'LB', 2, 0, 'British'),
      // TablesAndStats('14', 'Frimes Kelp', 6, 0, 7, 'RB', 5, 0, 'Welsh'),
      // TablesAndStats('15', 'Hrimes Kelp', 8, 0, 3, 'GK', 5, 2, 'British'),
      // TablesAndStats('16', 'Jrimes Kelp', 7, 3, 6, 'LM', 6, 1, 'Irish'),
      // TablesAndStats('17', 'Krimes Kelp', 10, 1, 3, 'RM', 4, 3, 'Ghanaian'),
      // TablesAndStats('18', 'Lrimes Kelp', 11, 1, 8, 'GK', 2, 2, 'Brazilian'),
    // ];
  // }


}

/// Custom business object class which contains properties to hold the detailed
/// information about the tablesAndStats which will be rendered in datagrid.

/// An object to set the tablesAndStats collection data source to the datagrid. This
/// is used to map the tablesAndStats data to the datagrid widget.


class TablesAndStatsDataSource extends DataGridSource {

  TablesAndStatsDataSource(this.tablesAndStatsList) {
    FirebaseFirestore.instance.collection('TablesAndStats');
    _buildDataRow();
  }


  List<TablesAndStats> tablesAndStatsList = [];

  // List<DataGridRow> dataGridRows = [];


  // @override
  // List<DataGridRow> get rows => dataGridRows;

  // @override
  // DataGridRowAdapter buildRow(DataGridRow row) {
  //     return DataGridRowAdapter(
  //         cells: row.getCells().map<Widget>((e) {
  //           return Container(
  //             alignment: Alignment.center,
  //             padding: EdgeInsets.all(8.0),
  //             child: Text(
  //               e.value.toString(),
  //               style: TextStyle(
  //                 color: Colors.black
  //               ),
  //
  //               // style: TextStyle(
  //               //   color: Colors.white70
  //               // ),
  //             ),
  //           );
  //         }).toList());
  //   }

    // @override
    // DataGridRowAdapter buildRow(DataGridRow row) {
    //   return DataGridRowAdapter(
    //       cells: row.getCells().map<Widget>((e) {
    //         return Container(
    //           alignment: Alignment.center,
    //           padding: EdgeInsets.all(8.0),
    //           child: Text(
    //             e.value.toString(),
    //             // style: TextStyle(
    //             //   color: Colors.white70
    //             // ),
    //           ),
    //         );
    //       }).toList());
    // }

  List<DataGridRow> dataGridRows = [];


  @override
  List<DataGridRow> get rows => dataGridRows;


  /// Creates the tablesAndStats data source class with required details.
  // coll({ List<TablesAndStats> tablesAndStatsList}) {
   _buildDataRow() {
    dataGridRows = tablesAndStatsList
        .map<DataGridRow>((e) => DataGridRow(cells: [

      // DataGridCell<String>(columnName: 'id', value: e.id),
      // DataGridCell<String>(columnName: 'player_name', value: e.playerName),
      // DataGridCell<String>(columnName: 'matches_played', value: e.matchesPlayed),
      // DataGridCell<String>(columnName: 'goals_scored', value: e.goalsScored),
      // DataGridCell<String>(columnName: 'assists', value: e.assists),
      // DataGridCell<String>(columnName: 'player_position', value: e.playerPosition),
      // DataGridCell<String>(columnName: 'yellow_card', value: e.yellowCard),
      // DataGridCell<String>(columnName: 'red_card', value: e.redCard),
      // DataGridCell<String>(columnName: 'nationality', value: e.nationality),

  //
  //     DataGridCell<int>(columnName: 'id', value: e.id),
  //     DataGridCell<String>(columnName: 'player_name', value: e.playerName),
  //     DataGridCell<int>(columnName: 'matches_played', value: e.matchesPlayed),
  //     DataGridCell<int>(columnName: 'goals_scored', value: e.goalsScored),
  //     DataGridCell<int>(columnName: 'assists', value: e.assists),
  //     DataGridCell<String>(columnName: 'player_position', value: e.playerPosition),
  //     DataGridCell<int>(columnName: 'yellow_card', value: e.yellowCard),
  //     DataGridCell<int>(columnName: 'red_card', value: e.redCard),
  //     DataGridCell<String>(columnName: 'nationality', value: e.nationality),


      DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.id, value: e.id),
      DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.playerName, value: e.playerName),
      DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.matchesPlayed.toString(), value: e.matchesPlayed),
      DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.goalsScored.toString(), value: e.goalsScored),
      DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.assists.toString(), value: e.assists),
      DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.playerPosition, value: e.playerPosition),
      DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.yellowCard.toString(), value: e.yellowCard),
      DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.redCard.toString(), value: e.redCard),
      DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.nationality, value: e.nationality),

    ]))
        .toList();
  }

  // void addDataGridRow(TablesAndStats data) {
  //     dataGridRows.add(DataGridRow(cells: [
  //       DataGridCell<String>(columnName: 'id', value: data.id),
  //       DataGridCell<String>(columnName: 'playerName', value: data.playerName),
  //       DataGridCell<String>(columnName: 'matchesPlayed', value: data.matchesPlayed),
  //       DataGridCell<String>(columnName: 'goalsScored', value: data.goalsScored),
  //       DataGridCell<String>(columnName: 'assists', value: data.assists),
  //       DataGridCell<String>(columnName: 'playerPosition', value: data.playerPosition),
  //       DataGridCell<String>(columnName: 'yellowCard', value: data.yellowCard),
  //       DataGridCell<String>(columnName: 'redCard', value: data.redCard),
  //       DataGridCell<String>(columnName: 'nationality', value: data.nationality),
  //
  //       // DataGridCell<String>(columnName: 'id', value: data.id),
  //       // DataGridCell<String>(columnName: 'player_name', value: data.player_name),
  //       // DataGridCell<String>(columnName: 'matches_played', value: data.matches_played),
  //       // DataGridCell<String>(columnName: 'goals_scored', value: data.goals_scored),
  //       // DataGridCell<String>(columnName: 'assists', value: data.assists),
  //       // DataGridCell<String>(columnName: 'player_position', value: data.player_position),
  //       // DataGridCell<String>(columnName: 'yellow_card', value: data.yellow_card),
  //       // DataGridCell<String>(columnName: 'red_card', value: data.red_card),
  //       // DataGridCell<String>(columnName: 'nationality', value: data.nationality),
  //
  //
  //
  //     ]));
  //   }

  // void updateDataGridDataSource() {
  //   notifyListeners();
  // }



  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
              child: Text(
                e.value.toString(),
                style: TextStyle(
                  color: Colors.black
              ),
            ),
        );
        }).toList());
  }


}


  // @override
  // DataGridRowAdapter buildRow(DataGridRow row) {
  //   return DataGridRowAdapter(
  //       cells: row.getCells().map<Widget>((e) {
  //         return Container(
  //           alignment: Alignment.center,
  //           padding: EdgeInsets.all(8.0),
  //           child: Text(
  //             e.value.toString(),
  //             // style: TextStyle(
  //             //   color: Colors.white70
  //             // ),
  //           ),
  //         );
  //       }).toList());
  // }



// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// import '../model/TablesAndStats.dart';
//
//
// EmployeeDataSource employeeDataSource;
// List<TablesAndStats> employeeData = [];
//
// getDataFromDatabase() async {
//   var value = FirebaseFirestore.instance.collection('TablesAndStats');
//   // var getValue = await value.child('DataGridEmployeeCollection').once();
//   return value;
// }
//
// Widget _buildDataGrid() {
//   return FutureBuilder(
//     future: getDataFromDatabase(),
//     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//       if (snapshot.hasData) {
//         var showData = snapshot.data;
//         Map<dynamic, dynamic> values = showData.value;
//         List<dynamic> key = values.keys.toList();
//
//         // for (int i = 0; i < key.length; i++) {
//         //   final data = values[key[i]];
//         //   employeeData.add(TablesAndStats(
//         //       id: data['id'],
//         //       name: data['name'],
//         //       designation: data['designation'],
//         //       salary: data['salary']));
//         // }
//
//         employeeDataSource = EmployeeDataSource(employeeData);
//         return SfDataGrid(
//           source: employeeDataSource,
//           columns: <GridColumn>[
//             GridColumn(
//                 columnName: 'id',
//                 label: Container(
//                     padding: EdgeInsets.all(16.0),
//                     alignment: Alignment.center,
//                     child: Text(
//                       'ID',
//                     ))),
//             GridColumn(
//                 columnName: 'name',
//                 label: Container(
//                     padding: EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: Text('Name'))),
//             GridColumn(
//                 columnName: 'designation',
//                 label: Container(
//                     padding: EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Designation',
//                       overflow: TextOverflow.ellipsis,
//                     ))),
//             GridColumn(
//                 columnName: 'salary',
//                 label: Container(
//                     padding: EdgeInsets.all(8.0),
//                     alignment: Alignment.center,
//                     child: Text('Salary'))),
//           ],
//         );
//       } else {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//     },
//   );
// }
//
// @override
// void initState() {
//   super.initState();
//   getDataFromDatabase();
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Syncfusion flutter datagrid firebase demo'),
//     ),
//     body: _buildDataGrid(),
//   );
// }
//
//
// class EmployeeDataSource extends DataGridSource {
//   EmployeeDataSource(this.employeeData) {
//     _buildDataRow();
//   }
//
//   List<DataGridRow> _employeeData = [];
//   List<TablesAndStats> employeeData;
//
//   void _buildDataRow() {
//     _employeeData = employeeData
//         .map<DataGridRow>((e) => DataGridRow(cells: [
//       DataGridCell<int>(columnName: 'id', value: e.id),
//       DataGridCell<String>(columnName: 'name', value: e.name),
//       DataGridCell<String>(
//           columnName: 'designation', value: e.designation),
//       DataGridCell<int>(columnName: 'salary', value: e.salary),
//     ]))
//         .toList();
//   }
//
//   @override
//   List<DataGridRow> get rows => _employeeData;
//
//   @override
//   DataGridRowAdapter buildRow(
//       DataGridRow row,
//       ) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((e) {
//           return Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(8.0),
//             child: Text(e.value.toString()),
//           );
//         }).toList());
//   }
// }
