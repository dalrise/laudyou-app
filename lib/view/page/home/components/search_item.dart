import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laudyou_app/view/components/custom_text_form_filed.dart';
import 'package:laudyou_app/view/widget/appbar_bottom_preferredsize.dart';

class SearchItem extends StatelessWidget {
  SearchItem({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.text,
          cursorColor: Colors.deepOrange,
          textInputAction: TextInputAction.go,
          onSubmitted: (value) {
            print("Go button is clicked" + value);
          },
          style: TextStyle(
              fontWeight: FontWeight.normal, color: Colors.deepOrange),
          //validator: (String? value) {},
          decoration: InputDecoration(
            prefixIcon: Icon(CupertinoIcons.search),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: "찾고 싶은 문제를 검색하세요.",
            // hintStyle: TextStyle(
            //     letterSpacing: 1,
            //     color: Colors.black54,
            //     fontWeight: FontWeight.normal),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        bottom: const AppbarBottomPreferredSize(),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("검색 !!"),
          ),
        ),
      ),
    );
  }
}
