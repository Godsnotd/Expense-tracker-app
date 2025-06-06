import 'package:capstone_1/pages/preview.dart';
import 'package:flutter/material.dart';

const context = BuildContext;
Column expenseData(
    String title, String date, String item, String amount, dynamic details,
    {required BuildContext context}) {
  return Column(
    children: [
      Card(
          child: ListTile(
        // horizontalTitleGap: 35,
        leading: Text(
          date,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.75),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'jost'),
        ),
        title: Center(
            child: Text(
          item,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.75),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'jost'),
        )),
        // subtitle: Text(details,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75),
        //       fontSize: 12,
        //       fontWeight: FontWeight.w400,
        //       fontFamily: 'jost'),),
        trailing: Text(
          title,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.75),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'jost'),
        ),
        tileColor: Color.fromRGBO(40, 41, 61, 1),
        textColor: Color.fromRGBO(255, 255, 255, 0.75),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PreviewScreen(
                        data: title,
                        date: date,
                        details: item,
                        info: details,
                        amounts: amount,
                      )));
        },
      )),
      SizedBox(height: 10),
    ],
  );
}
