import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud1/views/consts/color.dart';

class CardQna extends StatelessWidget {
  CardQna({super.key, required this.question, required this.onTap});
  final String question;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              question,
              style: TextStyle(
                  fontSize: 16.h,
                  color: kDark,
                  fontStyle: FontStyle.italic
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Divider(
            color: kDark,
          ),
        ],
      ),
    );
  }
}
