import 'package:capstone_1/pages/homepage.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => ExpenseScreenState();
}

class ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Add Expense',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'jost'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 38.74, bottom: 21),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'How much spent in total(N)',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.75),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(248, 248, 248, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 21),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.calendar_month_rounded)),
                        labelText: 'Date spent',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.75),
                        ),
                        prefixIconColor: Color.fromRGBO(255, 255, 255, 0.75),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(248, 248, 248, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 21),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(),
                          decoration: InputDecoration(
                              labelText: 'Item',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.75),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromRGBO(248, 248, 248, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Amount(N)',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.75),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color.fromRGBO(248, 248, 248, 1)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Color.fromRGBO(40, 41, 61, 1)),
                        elevation: WidgetStatePropertyAll(3),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black45),
                                borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: Color.fromRGBO(248, 248, 248, 1),
                          Icons.add_circle_outline_outlined,
                          size: 30,
                        ),
                        SizedBox(width: 4.74),
                        Text('Add Epense',
                            style: TextStyle(
                                color: Color.fromRGBO(248, 248, 248, 1),
                                fontSize: 16)),
                      ],
                    )),
                SizedBox(height: 14),
                SizedBox(
                  width: 392,
                  // height: 130,
                  child: TextField(
                    // showCursor: true,
                    // cursorColor: Color.fromRGBO(255, 255, 255, 0.75),
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Amount(N)',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.75),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(248, 248, 248, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 57),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 197,
                        height: 46,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(36, 106, 253, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            },
                            child: Center(
                                child: Text(
                              'Confirm Expense',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'jost',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
