import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:laudyou_app/controller/question_controller.dart';
import 'package:laudyou_app/models/question_cate.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

import 'components/my_laud_you_buy_modal.dart';

// 학습 관리
class MyLearningPage extends StatefulWidget {
  static String routeName = "my_learning";

  const MyLearningPage({Key? key}) : super(key: key);

  @override
  _MyLearningPageState createState() => _MyLearningPageState();
}

class _MyLearningPageState extends State<MyLearningPage> {
  var selected = {
    'cate1': 1,
    'cate2': 1,
    'cate3': 1,
  };

  QuestionController controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학습관리"),
        bottom: AppbarBottomPreferredSize(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildCardTitle(),
              _buildCategory(),
              _buildCard(),
              // _buildLearn("수학", 1, questionCateList1),
              // _buildLearn("영어", 2, questionCateList2),
              // _buildLearn("사자성어", 3, questionCateList3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardTitle() {
    return Row(
      children: [Icon(CupertinoIcons.book), Text("학습 레벨 선택")],
    );
  }

  Widget _buildCategory() {
    return Row(
      children: [
        Text("수학"),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              isExpanded: true, // 이 옵션을 쓰면 밖에 Expanded or Flexible 감싼다
              onChanged: (value) {},
              items: questionCateList1.map((value) {
                return DropdownMenuItem(
                    child: Text(value.text), value: value.id);
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Card(
      child: Column(
        children: List.generate(
          questionCateList1.length,
          (index) => _buildRowIconItem(),
        ),
      ),
    );
  }

  Widget _buildRowIconItem() {
    return InkWell(
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Checkbox(
            value: false,
            onChanged: (bool? newValue) {},
          ),
          Expanded(
            child: Text("수학 1학년 문제"),
            //width: 100,
          ),
          IconButton(
              onPressed: () {
                showBarModalBottomSheet(
                    expand: true,
                    builder: (context) => MyLaudYouBuyModal(),
                    context: context);
              },
              icon: Icon(Icons.add_circle_outline)),
        ],
      ),
    );
  }

  Widget _buildLearn(
      String text, int num, List<QuestionCate> questionCateList) {
    return Column(
      children: [
        Row(
          children: [Icon(CupertinoIcons.book), Text("학습 레벨 선택")],
        ),
        Row(
          children: [
            Text(text),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    isExpanded: true,
                    value: selected['cate' + num.toString()],
                    items: questionCateList.map((value) {
                      return DropdownMenuItem(
                          child: Text(value.text), value: value.id);
                    }).toList(),
                    onChanged: (int? value) {
                      setState(() {
                        selected['cate' + num.toString()] = value!;
                      });
                      //controller.questionCate1SelectedValue.value = value!;
                    }),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            itemCount: questionCateList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                title: Text(questionCateList[index].text),
                leading: Container(
                  decoration: BoxDecoration(
                    color: questionCateList[index].checked
                        ? Colors.white
                        : Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  width: 20,
                  height: 20,
                  child: Visibility(
                    child: Checkbox(
                      //checkColor: Colors.orangeAccent,
                      //tristate: false,
                      checkColor: Colors.white,
                      // hoverColor: Colors.transparent,
                      // focusColor: Colors.transparent,
                      // activeColor: Colors.transparent,
                      // activeColor: questionCateList[index].checked
                      //     ? Colors.green
                      //     : Colors.grey,
                      value: questionCateList[index].checked,
                      //fillColor: MaterialStateProperty.all<Color>(Colors.grey),
                      //onChanged: null,
                      onChanged: !questionCateList[index].isBuy
                          ? (bool? newValue) {
                              setState(() {
                                questionCateList[index].checked = newValue!;
                              });
                            }
                          : null,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
        ),
      ],
    );
  }
}
