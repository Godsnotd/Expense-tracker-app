//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

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
  // List<String> months = [
  //   'JAN',
  //   'FEB',
  //   'MAR',
  //   'APR',
  //   'MAY',
  //   'JUN',
  //   'JUL',
  //   'AUG',
  //   'SEP',
  //   'OCT',
  //   'NOV',
  //   'DEC'
  // ];
  dynamic selectedmonth;
  dynamic selectedYear;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(29, 27, 40, 1),
      //   iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
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
                      ),
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
                          initialSelection: DateTime.january,
                          textAlign: TextAlign.start,
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          dropdownMenuEntries: List.generate(
                            12, // From this month + 11 more
                            (index) {
                              int month = DateTime.january + index;
                              return DropdownMenuEntry(
                                value: month,
                                label: month.toString(),
                              );
                            },
                          ),
                          onSelected: (value) {
                            setState(() {
                              selectedmonth =
                                  value; // Make sure selectedmonth is a variable in your state
                            });
                          },
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
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            dropdownMenuEntries: List.generate(
                              11, // From this year + 10 more
                              (index) {
                                int year = DateTime.now().year + index;
                                return DropdownMenuEntry(
                                  value: year,
                                  label: year.toString(),
                                );
                              },
                            ),
                            onSelected: (value) {
                              setState(() {
                                selectedYear =
                                    value; // Make sure selectedYear is a variable in your state
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
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'N 0.0',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'N 0.0',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                            ),
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
