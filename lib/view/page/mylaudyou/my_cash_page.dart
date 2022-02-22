import 'package:flutter/material.dart';
import 'package:laudyou_app/constants.dart';
import 'package:laudyou_app/theme.dart';
import 'package:laudyou_app/view/components/dash_line.dart';
import 'package:laudyou_app/view/components/default_button.dart';

// 캐시 관리
class MyCashPage extends StatelessWidget {
  static String routeName = "my_cash";

  const MyCashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Text("캐시 관리"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(42),
            child: Container(
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
                color: Colors.white,
              ),
              child: TabBar(
                tabs: [
                  Tab(text: "캐시관리"),
                  Tab(text: "공유하기"),
                ],
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildCashMng(),
            Container(
              child: Column(
                children: [
                  Text("내 리워드 코드"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_buildCashMng() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      "사용 가능한 캐시",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "600원",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
              DashLine(),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Text("현금화 가능한 캐시"),
                    Spacer(),
                    Text("0원"),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        DefaultButton(text: "캐시 현금화 하기", press: () async {}),
        SizedBox(height: 20),
        Text(
          "최근 사용/적립 캐시 현황",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true, // 자식크기 만큼 확장

            itemCount: 50,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "출석 체크 무료 적립",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("+1",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "2022.02.11 11:30",
                        style: TextStyle(fontSize: 14.0),
                      )
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ),
        /*
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 16),
                  Text("보상 받은 총 적립 캐시"),
                  Spacer(),
                  Text("1,280원"),
                  SizedBox(width: 16),
                ],
              ),
              DashLine(),
              Table(
                columnWidths: {
                  0: FixedColumnWidth(100.0),
                  //1: FixedColumnWidth(100.0),
                  2: FixedColumnWidth(70.0),
                  2: FixedColumnWidth(70.0),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text("2022년 1월28일"),
                      ),
                      TableCell(
                        child: Text("리워드보상"),
                      ),
                      TableCell(
                        child: Text("적립"),
                      ),
                      TableCell(
                        child: Text("125원"),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),


        ),

         */
      ],
    ),
  );
}
