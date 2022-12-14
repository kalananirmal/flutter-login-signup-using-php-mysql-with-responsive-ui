import 'package:flutter/material.dart';
import '../../../admin_models/table_rows.dart';
import '../../../constants.dart';

class LearnDataTables extends StatefulWidget {
  const LearnDataTables({Key? key}) : super(key: key);

  @override
  State<LearnDataTables> createState() => _LearnDataTablesState();
}

class _LearnDataTablesState extends State<LearnDataTables> {
  late List<TableDetails> tbldetails;
  late List<TableDetails> selecteTable;
  late bool sort;

  @override
  void initState() {
    // TODO: implement initState
    sort = false;
    selecteTable = [];
    tbldetails = TableDetails.getbldetails();
    super.initState();
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
      if (ascending) {
        tbldetails.sort((a, b) => a.firstname.compareTo(b.firstname));
      } else {
        tbldetails.sort((a, b) => b.firstname.compareTo(a.firstname));
      }
    }
  }

  onSelectedRow(bool selected, TableDetails tbldetail) async {
    setState(() {
      if (selected) {
        selecteTable.add(tbldetail);
      } else {
        selecteTable.remove(tbldetail);
      }
    });
  }

  deleteSelected() async {
    setState(() {
      if (selecteTable.isNotEmpty) {
        List<TableDetails> temp = [];
        temp.addAll(selecteTable);
        for (TableDetails tbledetail in temp) {
          tbldetails.remove(tbledetail);
          selecteTable.remove(tbledetail);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Data Table",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
                sortAscending: sort,
                sortColumnIndex: 1,
                columns: <DataColumn>[
                  const DataColumn(
                    label: Text('ID'),
                    numeric: false,
                    tooltip: 'Table ID',
                  ),
                  DataColumn(
                      label: const Text('FirstName'),
                      numeric: false,
                      tooltip: ' First name',
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sort = !sort;
                        });
                        onSortColum(columnIndex, ascending);
                      }),
                  const DataColumn(
                    label: Text('Email'),
                    numeric: false,
                    tooltip: 'Email',
                  ),
                ],
                rows: tbldetails
                    .map(
                      (tbledetail) => DataRow(
                        selected: selecteTable.contains(tbledetail),
                        onSelectChanged: (b) {
                          print("Onselect");
                          onSelectedRow(b!, tbledetail);
                        },
                        cells: [
                          DataCell(Text(tbledetail.id), onTap: () {
                            print('Selected ${tbledetail.id}');
                          }),
                          DataCell(Text(tbledetail.firstname)),
                          DataCell(Text(tbledetail.email)),
                        ],
                      ),
                    )
                    .toList()),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: selecteTable.isEmpty
                      ? null
                      : () {
                          deleteSelected();

                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              title: const Text('Alert Box'),
                              content: Text(
                                  'Are you sure you want to delete the row ${tbldetails.length}'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                  child: const Text('Delete Selected Row'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
