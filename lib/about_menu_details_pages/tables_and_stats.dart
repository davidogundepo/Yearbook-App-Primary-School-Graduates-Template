
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primary_school_graduates/api/tables_and_stats_api.dart';
import 'package:primary_school_graduates/notifier/tables_and_stats_notifier.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/TablesAndStats.dart';



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

  List<TablesAndStats> tablesAndStats = <TablesAndStats>[];
  TablesAndStatsDataSource tablesAndStatsDataSource;

  @override
  void initState() {

    tablesAndStatsNotifier = Provider.of<TablesAndStatsNotifier>(context, listen: false);
    getTablesAndStats(tablesAndStatsNotifier);

    super.initState();
    tablesAndStats = getTablesAndStatsData();
    tablesAndStatsDataSource = TablesAndStatsDataSource(tablesAndStatsData: tablesAndStats);
  }

  @override
  Widget build(BuildContext context) {
    TablesAndStatsNotifier tablesAndStatsNotifier = Provider.of<TablesAndStatsNotifier>(context);

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
      body:
      // Container(
        // height: 500,
        // color: fourthSchoolChartColor,
        // margin: new EdgeInsets.only( bottom: 15),
        // child: SingleChildScrollView(
        //   child:
          Container(
            height: 700,
            child: Material(
              color: Colors.transparent,
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
                )
              ),
            ),
      //   ),
      // ),
      // SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Padding(
      //       padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           child: Material(
      //             color: materialColor,
      //             child: SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: SfDataGrid(
      //                 source: tablesAndStatsDataSource,
      //                 columnWidthMode: ColumnWidthMode.fill,
      //                 columns: <GridColumn>[
      //                   GridColumn(
      //                       columnName: 'id',
      //                       label: Container(
      //                           padding: EdgeInsets.all(16.0),
      //                           alignment: Alignment.center,
      //                           child: Text(
      //                             'ID',
      //                           ))),
      //                   GridColumn(
      //                       columnName: 'name',
      //                       label: Container(
      //                           padding: EdgeInsets.all(8.0),
      //                           alignment: Alignment.center,
      //                           child: Text('Name'))),
      //                   GridColumn(
      //                       columnName: 'designation',
      //                       label: Container(
      //                           padding: EdgeInsets.all(8.0),
      //                           alignment: Alignment.center,
      //                           child: Text(
      //                             'Designation',
      //                             overflow: TextOverflow.ellipsis,
      //                           ))),
      //                   GridColumn(
      //                       columnName: 'salary',
      //                       label: Container(
      //                           padding: EdgeInsets.all(8.0),
      //                           alignment: Alignment.center,
      //                           child: Text('Salary'))),
      //                 ],
      //               ),
      //
      //               // child: DataTable(
      //               //   sortColumnIndex: 0,
      //               //   sortAscending: true,
      //               //   columns: [
      //               //     DataColumn(label: Text('ID')), //Text('ID')),
      //               //     DataColumn(label: Text('PN')), //Text('Player Name')),
      //               //     DataColumn(label: Text('MP')), //Text('Matches Played')),
      //               //     DataColumn(label: Text('GS')), //Text('Goals')),
      //               //     DataColumn(label: Text('A')), //Text('Assists')),
      //               //     DataColumn(label: Text('PP')), //Text('Player Position')),
      //               //     DataColumn(label: Text('YC')), //Text('Yellow Card')),
      //               //     DataColumn(label: Text('RC')), //Text('Red Card')),
      //               //     DataColumn(label: Text('N')), //Text('Nationality')),
      //               // ],
      //               //   rows: [
      //               //     DataRow(cells: <DataCell>[
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Marcus Smith')),
      //               //     DataCell(Text('11')),
      //               //     DataCell(Text('8')),
      //               //     DataCell(Text('6')),
      //               //     DataCell(Text('Right Wing')),
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('0')),
      //               //     DataCell(Text('British')),
      //               //     ]),
      //               //     DataRow(cells: <DataCell>[
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Femi Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('3')),
      //               //     DataCell(Text('Daniel Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //     DataRow(cells: [
      //               //     DataCell(Text('2')),
      //               //     DataCell(Text('Tyler Watkins')),
      //               //     DataCell(Text('14')),
      //               //     DataCell(Text('10')),
      //               //     DataCell(Text('4')),
      //               //     DataCell(Text('Striker')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('1')),
      //               //     DataCell(Text('Nigerian')),
      //               //     ]),
      //               //   ],
      //               // ),
      //             ),
      //           ),
      //           decoration: BoxDecoration(
      //               color: boxDecorationColor.withAlpha(50),
      //               borderRadius: new BorderRadius.circular(4)
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )
    );
  }

  List<TablesAndStats> getTablesAndStatsData() {
    return
      [
      TablesAndStats('1', 'James Jerry', 8, 10, 3, 'CF', 2, 0, 'British'),
      TablesAndStats('2', 'Kath Kelp', 9, 5, 2, 'CM', 1, 0, 'British'),
      TablesAndStats('3', 'Lara Kelp', 12, 13, 1, 'CF', 3, 1, 'Nigerian'),
      TablesAndStats('4', 'Michael Kelp', 12, 19, 2, 'CAM', 1, 2, 'Scottish'),
      TablesAndStats('5', 'Martin Kelp', 5, 6, 4, 'CM', 3, 1, 'Pakistani'),
      TablesAndStats('6', 'Nerry Kelp', 9, 8, 1, 'CM', 2, 4, 'Indian'),
      TablesAndStats('7', 'Balnc Kelp', 8, 9, 6, 'LW', 1, 3, 'American'),
      TablesAndStats('8', 'Perry Kelp', 10, 14, 3, 'RW', 2, 2, 'French'),
      TablesAndStats('9', 'Gable Kelp', 10, 4, 5, 'CDM', 4, 4, 'German'),
      TablesAndStats('10', 'Grimes Kelp', 12, 3, 4, 'CB', 3, 2, 'Croatian'),
      TablesAndStats('11', 'Qrimes Kelp', 12, 6, 6, 'CM', 2, 1, 'British'),
      TablesAndStats('12', 'Wrimes Kelp', 8, 9, 1, 'CM', 2, 0, 'British'),
      TablesAndStats('13', 'Drimes Kelp', 4, 1, 4, 'LB', 2, 0, 'British'),
      TablesAndStats('14', 'Frimes Kelp', 6, 0, 7, 'RB', 5, 0, 'Welsh'),
      TablesAndStats('15', 'Hrimes Kelp', 8, 0, 3, 'GK', 5, 2, 'British'),
      TablesAndStats('16', 'Jrimes Kelp', 7, 3, 6, 'LM', 6, 1, 'Irish'),
      TablesAndStats('17', 'Krimes Kelp', 10, 1, 3, 'RM', 4, 3, 'Ghanaian'),
      TablesAndStats('18', 'Lrimes Kelp', 11, 1, 8, 'GK', 2, 2, 'Brazilian'),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the tablesAndStats which will be rendered in datagrid.

/// An object to set the tablesAndStats collection data source to the datagrid. This
/// is used to map the tablesAndStats data to the datagrid widget.


class TablesAndStatsDataSource extends DataGridSource {

  /// Creates the tablesAndStats data source class with required details.
  TablesAndStatsDataSource({ List<TablesAndStats> tablesAndStatsData}) {
    _tablesAndStatsData = tablesAndStatsData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'id', value: e.id),
      DataGridCell<String>(columnName: 'player_name', value: e.playerName),
      DataGridCell<int>(columnName: 'matches_played', value: e.matchesPlayed),
      DataGridCell<int>(columnName: 'goals_scored', value: e.goalsScored),
      DataGridCell<int>(columnName: 'assists', value: e.assists),
      DataGridCell<String>(columnName: 'player_position', value: e.playerPosition),
      DataGridCell<int>(columnName: 'yellow_card', value: e.yellowCard),
      DataGridCell<int>(columnName: 'red_card', value: e.redCard),
      DataGridCell<String>(columnName: 'nationality', value: e.nationality),


      // DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.id, value: e.id),
      // DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.playerName, value: e.playerName),
      // DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.matchesPlayed.toString(), value: e.matchesPlayed),
      // DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.goalsScored.toString(), value: e.goalsScored),
      // DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.assists.toString(), value: e.assists),
      // DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.playerPosition, value: e.playerPosition),
      // DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.yellowCard.toString(), value: e.yellowCard),
      // DataGridCell<int>(columnName: tablesAndStatsNotifier.currentTablesAndStats.redCard.toString(), value: e.redCard),
      // DataGridCell<String>(columnName: tablesAndStatsNotifier.currentTablesAndStats.nationality, value: e.nationality),


    ]))
        .toList();
  }

  List<DataGridRow> _tablesAndStatsData = [];

  @override
  List<DataGridRow> get rows => _tablesAndStatsData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
              child: Text(
              e.value.toString(),
                // style: TextStyle(
                //   color: Colors.white70
              // ),
            ),
        );
        }).toList());
  }
}
