import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:fitts_law/startPage/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../model/ex_model.dart';

class FinPage extends HookWidget {
  final List<ExModel> datas;

  const FinPage({super.key, required this.datas});

  @override
  Widget build(BuildContext context) {
    // csv生成
    Future<void> make() async {
      final directory = await ExternalPath.getExternalStoragePublicDirectory(
          ExternalPath.DIRECTORY_DOWNLOADS);
      var file = File('$directory/data.csv');

      var csvData = StringBuffer();
      for (var row in datas) {
        print(row);
        csvData.write("${row.d},${row.w},${row.mt}");
        csvData.writeln();
      }

      await file.writeAsString(csvData.toString());
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await make().then((value) => print("done"));
                },
                child: const Text("button")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartPage(),
                  ),
                );
              },
              child: const Text("retry"),
            )
          ],
        ),
      ),
    );
  }
}
