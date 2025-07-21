//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({
    super.key,
    required this.data,
    required this.date,
    required this.details,
    required this.info,
  });
  final dynamic data;
  final dynamic date;
  final List<Map<String, dynamic>> details;
  final dynamic info;

  @override
  State<PreviewScreen> createState() => PreviewScreenState();
}

class PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
        backgroundColor: Color.fromRGBO(29, 27, 40, 1),
        centerTitle: true,
        title: Text(
          'Expense Preview',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 11.7, left: 15, right: 16),
          child: ListView(
            children: [
              Container(
                // width: 397,
                //height: 600,
                decoration: BoxDecoration(color: Color.fromRGBO(40, 41, 61, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Column(
                        children: [
                          Text(
                            'Amount Spent',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Color.fromRGBO(255, 255, 255, 1),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Center(
                            child: Text(
                              widget.data,
                              style: TextStyle(
                                color: Color.fromRGBO(143, 200, 123, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 33),
                      child: Column(
                        children: [
                          Text(
                            'Date Spent',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Color.fromRGBO(255, 255, 255, 1),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Center(
                            child: Text(
                              widget.date,
                              style: TextStyle(
                                color: Color.fromRGBO(143, 200, 123, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 33),
                      child: Column(
                        children: [
                          Text(
                            'Expense Details',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Color.fromRGBO(255, 255, 255, 1),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Center(
                              child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: widget.details.length,
                            itemBuilder: (context, index) {
                              final item = widget.details[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item['item'] ?? '',
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 200, 123, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "₦${item['amount'] ?? ''}",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 200, 123, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 33),
                      child: Column(
                        children: [
                          Text(
                            'Additional Informations',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Color.fromRGBO(255, 255, 255, 1),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              // width: 284.21,
                              child: Text(
                                widget.info,
                                style: TextStyle(
                                  color: Color.fromRGBO(143, 200, 123, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //     child: Divider(
                    //   thickness: 5,
                    //   color: Color.fromRGBO(255, 255, 255, 1),
                    // )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
