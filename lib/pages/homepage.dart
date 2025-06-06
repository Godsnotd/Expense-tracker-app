import 'package:capstone_1/pages/customwid.dart';
import 'package:capstone_1/pages/expense.dart';
// import 'package:capstone_1/pages/preview.dart';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key, //required expenseValue
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<dynamic> expensesTotal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(29, 27, 40, 1),
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.82, left: 18, right: 18),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Expenses',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'jost'),
                    ),
                    SizedBox(
                      width: 32,
                      height: 28,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => ExpenseScreen()))
                              .then((value) {
                            if (value != null) {
                              setState(() {
                                expensesTotal.add(value);
                              });
                            }
                          });
                        },
                        iconSize: 29,
                        icon: Icon(Icons.add_circle,
                            color: Color.fromRGBO(36, 106, 253, 1)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.18, bottom: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 103,
                        height: 50,
                        child: DropdownMenu(
                          initialSelection: DateTime.now().month,
                          textAlign: TextAlign.start,
                          // inputDecorationTheme: InputDecorationTheme(),
                          //menuHeight: 30,
                          // menuStyle: MenuStyle(
                          //     backgroundColor: WidgetStateProperty.all(
                          //         Color.fromRGBO(29, 27, 40, 1))),
                          textStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          expandedInsets: EdgeInsets.only(),
                          //label: Text('MONTHS'),
                          dropdownMenuEntries: <DropdownMenuEntry<dynamic>>[
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'JAN'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'FEB'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'MAR'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'APR'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'MAY'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'JUN'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'JUL'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'AUG'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'SEP'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'OCT'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'NOV'),
                            DropdownMenuEntry(
                                value: DateTime.now().month, label: 'DEC')
                          ],
                          onSelected: (value) {
                            setState(() {
                              value = DateTime.now().month;
                            });
                          },

                          // style: ButtonStyle(
                          //     //changing the Style shape of the elevated button
                          //     backgroundColor: WidgetStateProperty.all(
                          //       Color.fromRGBO(29, 27, 40, 1),
                          //     ),
                          //     shape: WidgetStateProperty.all<
                          //             RoundedRectangleBorder>(
                          //         RoundedRectangleBorder(
                          //             side: BorderSide(
                          //                 color: Color.fromRGBO(
                          //                     201, 201, 206, 1)),
                          //             borderRadius:
                          //                 BorderRadius.circular(5)))),
                          // child: Text('NOV',
                          //     style: TextStyle(
                          //       color: Color.fromRGBO(255, 255, 255, 1),
                          //     )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 62),
                        child: SizedBox(
                          width: 103,
                          height: 50,
                          child: DropdownMenu(
                            initialSelection: DateTime.now().year,
                            textAlign: TextAlign.start,
                            // menuStyle: MenuStyle(
                            //     backgroundColor: WidgetStateProperty.all(
                            //         Color.fromRGBO(29, 27, 40, 1))),
                            // menuStyle: MenuStyle(
                            //     minimumSize:
                            //         WidgetStateProperty.all(Size(50, 60))),
                            textStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            expandedInsets: EdgeInsets.only(),
                            //label: Text('MONTHS'),
                            dropdownMenuEntries: <DropdownMenuEntry<dynamic>>[
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2014'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2015'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2016'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2017'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2018'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2019'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2020'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2021'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2022'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2023'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2024'),
                              DropdownMenuEntry(
                                  value: DateTime.now().year, label: '2025')
                            ],
                            onSelected: (value) {
                              setState(() {
                                value = DateTime.now().year;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 392,
                  height: 114,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(36, 106, 253, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: SizedBox(
                        width: 314,
                        height: 71,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 89,
                              height: 71,
                              child: Column(
                                children: [
                                  Text(
                                    'This Month',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'jost'),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'N 0.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'jost'),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(
                              thickness: 2,
                              width: 10,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(
                              width: 89,
                              height: 71,
                              child: Column(
                                children: [
                                  Text(
                                    'This Year',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'jost'),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'N 0.0',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'jost'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: SizedBox(
                          height: 29,
                          width: 143,
                          child: Text(
                            'Expense History',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'jost'),
                          )),
                    )
                  ],
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return expenseData(
                        expensesTotal[index]["spent"],
                        expensesTotal[index]["date"],
                        expensesTotal[index]["item"],
                        expensesTotal[index]["amount"],
                        expensesTotal[index]["details"],
                        context: context);
                  },
                  itemCount: expensesTotal.length,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
