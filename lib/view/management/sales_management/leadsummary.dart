import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sales/utils/texts.dart';
import 'package:sales/view/management/sales_management/Quationtracker.dart';
import 'package:sales/view/management/sales_management/allsalesorder.dart';
import 'package:sales/view/management/sales_management/customerservices.dart';
import 'package:sales/view/management/sales_management/lead_genration.dart';
import 'package:sales/view/management/sales_management/productservices.dart';
import 'package:sales/view/management/sales_management/sales_flowup.dart';
import 'package:sales/view/management/sales_management/salesrepersentative.dart';
import 'package:sales/view/management/sales_management/settings/mainproductgroup.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Leadsummary extends StatefulWidget {
  const Leadsummary({Key? key}) : super(key: key);

  @override
  _LeadsummaryState createState() => _LeadsummaryState();
}

class _LeadsummaryState extends State<Leadsummary> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#023781"),
          toolbarHeight: 60,
          centerTitle: true,
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: HexColor("#7C8EB2"),
                    radius: 30,
                    child: Icon(Icons.people_sharp, color: Colors.white)))
          ],
          title: Material(
            elevation: 3,
            shadowColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              //margin: EdgeInsets.only(top: 20),
              // width: width * 0.7,
              height: 50,
              child: TextField(
                decoration: Texts.Textfeild(
                    "Search here", Icon(Icons.search, color: Colors.grey)),
                style: Texts.style(Texts.h6, Colors.black, Texts.normal),
              ),
            ),
          ),
        ),
        body: Container(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("assets/dashboard/dashboard-active.png"),
                  ),
                  Icon(Icons.arrow_right),
                  Text("General & Administraion",
                      style: Texts.style(
                          Texts.h9, HexColor("#7C8EB2"), Texts.normal)),
                  Icon(Icons.arrow_right),
                  Text("Sales Management",
                      style:
                          Texts.style(14.0, HexColor("#7C8EB2"), Texts.normal))
                ],
              ),
            ),
// ignore: avoid_unnecessary_containers
            Center(
              child: Container(
                  child: Text("Lead Summary Report", style: Texts.primary1d())),
            ),

            SizedBox(height: 5),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: Get.width / 4.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {},
                          color: HexColor("#7D7D7D"),
                          child: Text("Copy",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: Get.width / 4.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {},
                          color: HexColor("#7D7D7D"),
                          child: Text("Excel",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: Get.width / 4.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {},
                          color: HexColor("#7D7D7D"),
                          child: Text("CSV",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: Get.width / 4.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {},
                          color: HexColor("#7D7D7D"),
                          child: Text("Print",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )),
                  ),
                ),
              ],
            ),

// Padding(
//   padding: const EdgeInsets.all(10.0),
//   child:   Material(
//                      elevation: 5,
//                      shadowColor: Colors.grey,
//                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                      child: Container(
//                         //margin: EdgeInsets.only(top: 20),
//                         // width: width * 0.7,
//                       height:50,
//                       child: TextField(
//                       decoration: Texts.Textfeild("Search here",Icon(Icons.search,color:Colors.grey)),
//                       style: Texts.style(
//                       Texts.h6, Colors.black, Texts.normal),
//                         ),), ),
// ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  width: Get.width,
                  child: Center(
                    child: SfDataGridTheme(
                      data: SfDataGridThemeData(
                        // rowHoverColor: HexColor("#7C8EB2"),
                        // rowHoverTextStyle: TextStyle(
                        // color: Colors.white,
                        // fontSize: 14,),
                        sortIconColor: Colors.white,
                        headerHoverColor: Colors.yellow,
                        headerColor: HexColor("#023781"),
                      ),
                      child: SfDataGrid(
                        selectionMode: SelectionMode.multiple,
                        frozenColumnsCount: 2,
                        allowSorting: true,
                        allowEditing: true,
                        allowPullToRefresh: true,
                        showCheckboxColumn: false,
                        gridLinesVisibility: GridLinesVisibility.vertical,
                        headerGridLinesVisibility: GridLinesVisibility.vertical,
                        source: employeeDataSource,
                        columns: <GridColumn>[
                          GridColumn(
                              allowEditing: true,
                              columnName: 'id',
                              label: Container(
                                  padding: EdgeInsets.all(16.0),
                                  alignment: Alignment.center,
                                  color: HexColor("#023781"),
                                  child: Text(
                                    'S.No',
                                    style: Texts.whit1e(),
                                  ))),
                          GridColumn(
                              columnName: 'name',
                              label: Container(
                                  color: HexColor("#023781"),
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Lead ID',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'designation',
                              label: Container(
                                  color: HexColor("#023781"),
                                  padding: EdgeInsets.all(1.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Company Name',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'salary',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Lead Owner',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'date',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Created On',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'time',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Modified On',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'amount',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Lead Value',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'value',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Status',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                          GridColumn(
                              columnName: 'perform',
                              label: Container(
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Action',
                                    style: Texts.whit1e(),
                                    textAlign: TextAlign.center,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: 120,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {},
                            color: HexColor("#023781"),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_left, color: Colors.white),
                                Text("Previous",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                        height: 50,
                        width: 120,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {},
                            color: HexColor("#023781"),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Icon(Icons.arrow_right, color: Colors.white),
                              ],
                            ))),
                  ),
                ),
              ],
            ),
          ],
        ))),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(image: AssetImage("assets/Logo.png"))),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 1,
                ),
                child: Container(
                  child: ExpansionTile(
                    expandedAlignment: Alignment.topLeft,
                    //leading: Padding( padding:EdgeInsets.only(right:1),child: Container(child:Image(image:AssetImage("assets/menuicon/employe.png")))) ,
                    title: Container(
                      child: Text("Sales Management",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ),

                    expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Lead_genaration());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Lead Generation.png"),
                                          ))),
                                  Text(" Lead Generation",
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Salefollowup());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Sales Follow Up.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Sales Follow-Up ",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Productservice());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Products Services.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Product/Services",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Salesreperstative());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Sales Representative.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Sales Representatives",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Quationtracker());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Quotation Tracker.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Quotation Tracker",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () {
                                Get.to(AllSalesorder());
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 5, top: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/Sales Orders.png"),
                                            ))),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sales Orders",
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ],
                                ),
                              ))),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () {
                                Get.to(Leadsummary());
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 5, top: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/Lead Summary Report.png"),
                                            ))),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Lead Summary Report",
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ],
                                ),
                              ))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Customerservices());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Customer Service.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Customer Service",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Get.to(Mainsettings());
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/Settings.png"),
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Settings",
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(1, 'LD001', 'Ocean Softwares', 'Suresh', 12 - 12 - 2020,
          14 - 02 - 2021, 20000, 'Approved', 'Product'),
      Employee(2, 'LD002', 'Ocean Softwares', 'Krishna', 10 - 05 - 2020,
          13 - 07 - 2020, 26000, 'Declined', 'Product'),
      Employee(3, 'LD003', 'Ocean Softwares', 'Kani', 15 - 07 - 2020,
          17 - 09 - 2020, 10000, 'Pending', 'Product'),
      Employee(1, 'LD001', 'Ocean Softwares', 'Suresh', 20 - 03 - 2020,
          10 - 05 - 2020, 25000, 'Approved', 'Product'),
      Employee(2, 'LD002', 'Ocean Softwares', 'Krishna', 14 - 02 - 2020,
          08 - 04 - 2020, 28000, 'Declined', 'Product'),
      Employee(3, 'LD003', 'Ocean Softwares', 'Kani', 18 - 07 - 2020,
          26 - 07 - 2020, 20000, 'Pending', 'Product'),
    ];
  }
}

class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary, this.date,
      this.time, this.amount, this.value, this.perform);

  /// Id of an employee.
  final int id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final String salary;

  /// Date of creation.
  final int date;

  /// Date of Modified
  final int time;

  /// Lead Value
  final int amount;

  /// Status
  final String value;

  /// Action
  final String perform;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<String>(columnName: 'salary', value: e.salary),
              DataGridCell<int>(columnName: 'date', value: e.date),
              DataGridCell<int>(columnName: 'time', value: e.time),
              DataGridCell<int>(columnName: 'amount', value: e.amount),
              DataGridCell<String>(columnName: 'value', value: e.value),
              DataGridCell<String>(columnName: 'perform', value: e.perform)
            ]))
        .toList();
  }
  List<DataGridRow> _employeeData = [];
  @override
  List<DataGridRow> get rows => _employeeData;
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    Color backgroundcolor() {
      int index = effectiveRows.indexOf(row);
      if (index % 2 == 0) {
        return Colors.white;
      } else {
        return Colors.grey[100]!;
      }
    }

    return DataGridRowAdapter(
        color: backgroundcolor(),
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}
