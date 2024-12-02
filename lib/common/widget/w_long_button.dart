import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const LongButton({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(child: title.text.make()),
          Arrow(color: context.appColors.lessImportant),
        ],
      ),
    );
  }
}
