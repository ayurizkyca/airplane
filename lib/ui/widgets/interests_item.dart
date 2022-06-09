import 'package:flutter/material.dart';

class interestItem extends StatelessWidget {
  final String item;
  const interestItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check-circle.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(item),
        ],
      ),
    );
  }
}
