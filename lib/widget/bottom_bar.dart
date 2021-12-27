import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const SizedBox(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home, size: 18
              ),
              child: Text('홈', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.search, size: 18
              ),
              child: Text('검', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.save, size: 18
              ),
              child: Text('저장한 컨턴츠 목록', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                  Icons.list, size: 18
              ),
              child: Text('더보기', style: TextStyle(fontSize: 9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}