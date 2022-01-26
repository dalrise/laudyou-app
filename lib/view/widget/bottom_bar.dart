import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: const SizedBox(
        height: 50,
        child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 18),
                child: Text(
                  '홈',
                  style: TextStyle(fontSize: 9),
                ),
              ),
              Tab(
                icon: Icon(Icons.add_chart, size: 18),
                child: Text(
                  '통계',
                  style: TextStyle(fontSize: 9),
                ),
              ),
              Tab(
                icon: Icon(Icons.app_blocking, size: 18),
                child: Text(
                  '제어',
                  style: TextStyle(fontSize: 9),
                ),
              ),
              Tab(
                icon: Icon(Icons.manage_accounts, size: 18),
                child: Text(
                  '제어',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ]),
      ),
    );
  }
}
