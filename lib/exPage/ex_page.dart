import 'dart:math' as math;

import 'package:fitts_law/finPage/fin_page.dart';
import 'package:fitts_law/model/ex_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExPage extends HookWidget {
  const ExPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pos = useState<Alignment>(const Alignment(0, 0));
    final preOffset = useState<Offset?>(null);
    final preDate = useState<DateTime?>(null);
    final count = useState<int>(0);
    final datas = useState<List<ExModel>>([]);
    const int maxCount = 100;
    GlobalKey globalKey = GlobalKey();

    final width = useState<double>(100);

    int calcMT() {
      DateTime now = DateTime.now();
      int? mt;
      if (preDate.value != null) {
        mt = now.difference(preDate.value!).inMilliseconds;
        // print("MT:${mt}ms");
      }
      preDate.value = now;
      return mt ?? 0;
    }

    double calcDistance(Offset tapPos) {
      RenderBox? box =
          globalKey.currentContext?.findRenderObject() as RenderBox?;
      double? distance;
      Offset? current = box?.localToGlobal(Offset.zero);
      if (preOffset.value != null) {
        distance = (current! - preOffset.value!).distance;
      }
      preOffset.value = tapPos;
      return distance ?? 0;
    }

    void getData(Offset tapPos) {
      double d = calcDistance(tapPos);
      int mt = calcMT();
      ExModel data = ExModel(w: width.value, d: d, mt: mt);
      if (count.value != 0) {
        datas.value.add(data);
        print(data);
      }
      count.value++;
      // print(data);
    }

    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Material(
            child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("試行回数:${count.value}")),
          ),
          Align(
            alignment: pos.value,
            child: GestureDetector(
              onTapDown: (detail) {
                if (count.value == maxCount) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FinPage(
                        datas: datas.value,
                      ),
                    ),
                  );
                }
                getData(detail.globalPosition);

                width.value = 50 + math.Random().nextDouble() * 100;

                pos.value = Alignment(
                  math.Random().nextDouble() * 2 - 1.0,
                  math.Random().nextDouble() * 2 - 1.0,
                );
              },
              child: Container(
                key: globalKey,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                width: width.value,
                height: width.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
