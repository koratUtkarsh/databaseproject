import 'package:databaseproject/Utils/dbHelper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{
  Future<void> readData()
  async {
    await DbHelper.helper.ReadData();
  }
}