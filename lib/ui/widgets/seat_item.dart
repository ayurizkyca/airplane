import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class seatItem extends StatelessWidget {
  //NOTE : 0.AVAILABLE, 1.SELECTED, 2.UNAVAILABLE

  final int status;
  const seatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kAvailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kAvailableColor;
      }
    }

    return Container(
      width: 48,
      height: 48,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor(),
          border: Border.all(
            color: borderColor(),
          )),
    );
  }
}
