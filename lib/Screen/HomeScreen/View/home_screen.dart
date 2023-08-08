import 'package:databaseproject/Screen/HomeScreen/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController hc = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
          Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/income');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text('Add',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                      ),),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    hc.readData();
                    Get.toNamed('/transation');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text('Transaction',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
