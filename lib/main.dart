// void main() {
//   runApp(const Portfolio());
// }
//
// class Portfolio extends StatelessWidget {
//   const Portfolio({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, child) {
//         return MaterialApp(
//           // theme: ThemeData(fontFamily: "Poppins"),
//           debugShowCheckedModeBanner: false,
//           home: MainScreen(),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const PortfolioApp());
}
