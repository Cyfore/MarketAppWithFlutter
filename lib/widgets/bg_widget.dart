import 'package:market_app_with_flutter/consts/consts.dart';
import 'package:nil/nil.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child: child ?? nil,
  );
}
