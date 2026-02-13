import 'package:flutter/material.dart';
import 'package:potfolio/sections/home_section.dart';

import 'core/themes.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: HomeSection(),
    );
  }
}
