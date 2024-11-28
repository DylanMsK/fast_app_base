import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");

    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${formatter.format(account.balance)}원",
                style: TextStyle(
                  color: context.appColors.text,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              (account.accountTypeName ?? "${account.bank.name} 통장")
                  .text
                  .white
                  .size(12)
                  .make(),
            ],
          ).pSymmetric(h: 20, v: 10),
        ),
        RoundedContainer(
          backgroundColor: context.appColors.btnBackground,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          radius: 10,
          child: "송금".text.white.bold.make(),
        ),
      ],
    );
  }
}
