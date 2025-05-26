import 'package:capstone_1/pages/expense.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(29, 27, 40, 1),
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
                                  builder: (_) => ExpenseScreen()));
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
                        width: 99,
                        height: 43,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                //changing the Style shape of the elevated button
                                backgroundColor: WidgetStateProperty.all(
                                  Color.fromRGBO(29, 27, 40, 1),
                                ),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                201, 201, 206, 1)),
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            child: Text('NOV',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 62),
                        child: SizedBox(
                            width: 99,
                            height: 43,
                            child: ElevatedButton(
                                onPressed: () {
                                  //draw down menu button
                                },
                                style: ButtonStyle(
                                    //changing the Style shape of the elevated button
                                    backgroundColor: WidgetStateProperty.all(
                                      Color.fromRGBO(29, 27, 40, 1),
                                    ),
                                    shape: WidgetStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    201, 201, 206, 1)),
                                            borderRadius:
                                                BorderRadius.circular(5)))),
                                child: Text('2024',
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    )))),
                      )
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
                              child: Text(
                                'This Month',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'jost'),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              height: 30,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(
                              width: 89,
                              height: 71,
                              child: Text(
                                'This Year',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'jost'),
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
                Card(
                    color: Color.fromRGBO(40, 41, 61, 1),
                    child: Container(
                      height: 44,
                      child: Row(
                        children: [
                          Text('22/11/24'),
                          Text('Food & Drink'),
                          //subtitle: Text('food'),
                          Text('#10,000'),

                          // Color: Color.fromRGBO(255, 255, 255, 0.75),
                        ],
                      ),
                    )),
                SizedBox(
                  //height: 44,
                  child: Card(
                      child: ListTile(
                    horizontalTitleGap: 35,
                    leading: Text('22/11/24'),
                    title: Text('Food & Drink'),
                    //subtitle: Text('food'),
                    trailing: Text('#10,000'),
                    tileColor: Color.fromRGBO(40, 41, 61, 1),
                    textColor: Color.fromRGBO(255, 255, 255, 0.75),
                    onTap: () {},
                  )),
                ),
                SizedBox(
                  //height: 44,
                  child: Card(
                      child: ListTile(
                    horizontalTitleGap: 35,
                    leading: Text('22/11/24'),
                    title: Text('Food & Drink'),
                    //subtitle: Text('food'),
                    trailing: Text('#10,000'),
                    tileColor: Color.fromRGBO(40, 41, 61, 1),
                    textColor: Color.fromRGBO(255, 255, 255, 0.75),
                    onTap: () {},
                  )),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
