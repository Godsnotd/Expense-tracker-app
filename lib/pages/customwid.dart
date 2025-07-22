import 'package:capstone_1/pages/preview.dart';
import 'package:flutter/material.dart';

// const context = BuildContext;
Column expenseData(dynamic title, dynamic date,
    List<Map<String, dynamic>> addMore, dynamic details,
    {required BuildContext context, required VoidCallback onDelete,}) {
  dynamic addmoreSummary = addMore.map((e) => "${e['item']} ").join();
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
          ),
        ),
        title: Center(
            child: Text(
          overflow: TextOverflow.ellipsis,
          addmoreSummary,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.75),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )),
        // subtitle: Text(details,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.75),
        //       fontSize: 12,
        //       fontWeight: FontWeight.w400,
        //       fontFamily: 'jost'),),
        trailing: SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.75),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color.fromRGBO(255, 255, 255, 0.75),
              )
            ],
          ),
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
                details: addMore,
                info: details,
              ),
            ),
          );
        },
        onLongPress: () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: const Color.fromRGBO(40, 41, 61, 1),
              title: const Text('Delete Expense',style: TextStyle(color: Colors.white),),
              content: const Text('Are You Sure You Want to Delete this Expense?',style: TextStyle(color: Colors.white70),),
              actions: [TextButton(
            child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
            onPressed: () {
              Navigator.of(context).pop();
              onDelete(); // this removes the item
            },
          ),],
            );
          },
        ),
      )),
      SizedBox(height: 10),
    ],
  );
}
