import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class selectItem extends StatelessWidget {
  final String icon;
  final String title;
  const selectItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(icon),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
