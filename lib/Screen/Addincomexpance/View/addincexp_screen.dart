import 'package:databaseproject/Utils/dbHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddIncExpScreen extends StatefulWidget {
  const AddIncExpScreen({Key? key}) : super(key: key);

  @override
  State<AddIncExpScreen> createState() => _AddIncExpScreenState();
}

class _AddIncExpScreenState extends State<AddIncExpScreen> {
  TextEditingController txtcate = TextEditingController();
  TextEditingController txtamount = TextEditingController();
  TextEditingController txtnote = TextEditingController();
  TextEditingController txtpaytype = TextEditingController();
  TextEditingController txtdate = TextEditingController();
  TextEditingController txttime = TextEditingController(
      text: "${TimeOfDay.now().hour}:${TimeOfDay.now().minute}");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Income Or Expance"),
        ),
        body: Column(
          children: [
            TextField(
              controller: txtcate,
              decoration: InputDecoration(
                hintText: "Category",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: txtamount,
              decoration: InputDecoration(
                hintText: "Amount",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: txtpaytype,
              decoration: InputDecoration(
                hintText: "Pay Types",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: txtdate,
              decoration: InputDecoration(
                hintText: "Date",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: txtnote,
              decoration: InputDecoration(
                hintText: "Note",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: InkWell(
                onTap: () {
                  DbHelper.helper.InsertData(name: txtcate.text, amount: txtamount.text, date: txtdate.text, time: txttime.text, paytype: txtpaytype.text, note: txtnote.text);

                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text('Income',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
