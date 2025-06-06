// import 'package:capstone_1/pages/homepage.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => ExpenseScreenState();
}

class ExpenseScreenState extends State<ExpenseScreen> {
  TextEditingController spentController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController itemController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(29, 27, 40, 1),
        centerTitle: true,
        title: Text(
          'Add Expense',
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'jost'),
        ),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 38.74, bottom: 21),
                  child: TextField(
                    controller: spentController,
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
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
                    controller: dateController,
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
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
                ItemField(
                    itemController: itemController,
                    amountController: amountController),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Color.fromRGBO(40, 41, 61, 1)),
                        elevation: WidgetStatePropertyAll(3),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black45),
                                borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {
                      ListView.builder(itemBuilder: (context, index) {
                        return ItemField(
                          itemController: TextEditingController(),
                          amountController: TextEditingController(),
                        );
                      });
                    },
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
                TextField(
                  controller: detailsController,
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: 'Additional Information',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.75),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(248, 248, 248, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
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
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        contentTextStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(
                                                248, 248, 248, 1)),
                                        titleTextStyle: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromRGBO(
                                                248, 248, 248, 1)),
                                        backgroundColor:
                                            Color.fromRGBO(29, 27, 40, 1),
                                        title: Center(
                                            child: Text('Confirm Expense')),
                                        content: Text(
                                            "Are You Sure You Want to Add This Expense"),
                                        actions: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    36, 106, 253, 1),
                                              ),
                                              onPressed: () {
                                                if (spentController
                                                        .text.isNotEmpty &&
                                                    dateController
                                                        .text.isNotEmpty &&
                                                    itemController
                                                        .text.isNotEmpty &&
                                                    amountController
                                                        .text.isNotEmpty &&
                                                    detailsController
                                                        .text.isNotEmpty) {
                                                  Map<String, dynamic>
                                                      expenseValues = {
                                                    "spent":
                                                        spentController.text,
                                                    "date": dateController.text,
                                                    "item": itemController.text,
                                                    "amount":
                                                        amountController.text,
                                                    "details":
                                                        detailsController.text,
                                                  };
                                                  Navigator.pop(context);
                                                  Navigator.pop(
                                                      context, expenseValues);
                                                }
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        backgroundColor:
                                                            Color.fromRGBO(
                                                                29, 27, 40, 1),

                                                        // shape: ShapeBorder.lerp(
                                                        //     Border(),
                                                        //     CircleBorder(),
                                                        //     10),
                                                        // duration:
                                                        //     Durations.medium3,
                                                        content: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .check_circle_sharp,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      237,
                                                                      63,
                                                                      1),
                                                            ),
                                                            Text(
                                                              'Expense successfully added',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontFamily:
                                                                      'jost'),
                                                            )
                                                          ],
                                                        )));
                                              },
                                              child: Text(
                                                'Confirm',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'jost',
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              )),
                                          SizedBox(width: 26),
                                          SizedBox(
                                            width: 120,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color.fromRGBO(
                                                            40, 41, 61, 1)),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'jost',
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                )),
                                          )
                                        ],
                                      ));
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

class ItemField extends StatelessWidget {
  const ItemField({
    super.key,
    required this.itemController,
    required this.amountController,
  });

  final TextEditingController itemController;
  final TextEditingController amountController;

  @override
 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 21),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: itemController,
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
              decoration: InputDecoration(
                  labelText: 'Item',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.75),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(248, 248, 248, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: TextField(
              controller: amountController,
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75)),
              decoration: InputDecoration(
                  labelText: 'Amount(N)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.75),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(248, 248, 248, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            ),
          ),
        ],
      ),
    );
  }
}
