import 'package:axentix_doc_scalp/const_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: navbarColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  TextButton.icon(
                    icon: FaIcon(FontAwesomeIcons.home),
                    label: Text('Home'),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.book,
                      color: Colors.white,
                    ),
                    label: Text('Documentation'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/axentix-logo.png'),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
