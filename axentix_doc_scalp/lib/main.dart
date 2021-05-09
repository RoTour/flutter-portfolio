import 'package:axentix_doc_scalp/components/navbar.dart';
import 'package:axentix_doc_scalp/const_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

void main() {
  runApp(AxentixScalpApp());
}

class AxentixScalp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Building grid');
    return Container(
      color: backgroundColor,
      child: LayoutGrid(
        areas: '''
          Navbar  Navbar  Navbar
          NavMenu Content Content
          NavMenu Content Content
        ''',
        columnSizes: [0.6.fr, 1.0.fr, 1.0.fr],
        rowSizes: [0.2.fr, 1.0.fr, 1.0.fr],
        children: [
          gridArea('Navbar').containing(Navbar()),
          gridArea('NavMenu').containing(Container(color: navMenuColor)),
          gridArea('Content').containing(Container(color: backgroundColor)),
        ],
      ),
    );
  }
}

class AxentixScalpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Layout Grid Desktop Example',
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      builder: (context, child) => AxentixScalp(),
    );
  }
}
