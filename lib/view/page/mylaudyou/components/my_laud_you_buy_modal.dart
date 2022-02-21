import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:laudyou_app/utils/validator_util.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/components/default_button.dart';

class MyLaudYouBuyModal extends StatelessWidget {
  const MyLaudYouBuyModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text("선택한 학습 과정을 구매하시겠습니까?"),
          ),
          Image.asset(
            "assets/images/logo.jpg",
            fit: BoxFit.cover,
          ),
          Text("초등 1학년 덧셈과 뺄셈 1 두수로 가르기"),
          Text("500 원"),
          Table(
            columnWidths: {
              1: FixedColumnWidth(100.0),
              2: FixedColumnWidth(70.0),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("라우드유 캐시(1,000원)"),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFormField(
                    hint: "0",
                    validator: validateLauduCash(),
                    //controller: _username,
                  ),
                )),
                TableCell(
                    child: DefaultButton(
                  width: 50,
                  text: "적용",
                  press: () {},
                ))
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("프로모션 코드"),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFormField(
                    hint: "0",
                    validator: validateLauduCash(),
                    //controller: _username,
                  ),
                )),
                TableCell(
                    child: DefaultButton(
                  width: 50,
                  text: "적용",
                  press: () {},
                ))
              ])
            ],
          ),
          Divider(
            height: 4,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("0원"),
              DefaultButton(
                width: 150,
                text: "구매하기",
                press: () {
                  showOkAlertDialog(
                    title: "구매완료",
                    message: "구매가 완료되었습니다.",
                    context: context,
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
