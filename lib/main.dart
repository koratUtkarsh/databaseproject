import 'package:databaseproject/Screen/Addincomexpance/View/addincexp_screen.dart';
import 'package:databaseproject/Screen/HomeScreen/View/home_screen.dart';
import 'package:databaseproject/Screen/Transaction_Screen/View/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page:()=> HomeScreen(),),
        GetPage(name: '/income', page:()=> AddIncExpScreen(),),
        GetPage(name: '/transation', page:()=> TransactionScreen(),),
      ],
    ),
  );
}