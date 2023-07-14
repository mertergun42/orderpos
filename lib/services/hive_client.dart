import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class HiveClient {
  getStarted() async {
    return await Hive.initFlutter();
  }

  setUser() async {
    try {
      await getStarted();
      var box = await Hive.openBox('testBox');
      box.put('name', 'David');
      print('Name: ${box.get('name')}');
      await getFinish();
    } catch (_) {
      debugPrint(_.toString());
    }
  }

  getFinish() async {
    return await Hive.close();
  }
}
