import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';

openAlertBox3({required BuildContext context, required Widget widget}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              AlertDialog(
                title: Text("제목"),
                content: widget,
              ),
              Container(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Theme.of(context).errorColor,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                  ),
                ),
              )
            ],
          ),
        );
      });
}

openAlertBox2({required BuildContext context, required Widget widget}) {
  return showDialog(
      context: context,
      //barrierDismissible: false,
      builder: (BuildContext context) {
        return Stack(
          children: [
            AlertDialog(
              backgroundColor: kPrimaryColor,
              insetPadding: const EdgeInsets.all(10),
              content: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -10.0,
                    right: -10.0,
                    //  right: 0.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true)
                            .pop('dialog');
                      },
                      child: const Icon(
                        Icons.close_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      //width: double.infinity,
                      //height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue[100],
                      ),
                      padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                      child: widget,
                    ),
                  ),
                  Positioned(
                      top: -100,
                      child: Image.asset("assets/images/logo2.png",
                          width: 150, height: 150)),
                ],
              ),
            ),
          ],
        );
      });
}

openAlertBox(context) {
  const myColor = Colors.greenAccent;
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: const EdgeInsets.only(top: 10.0),
          insetPadding: const EdgeInsets.all(10),
          content: Container(
            width: 500.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Rate",
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.star_border,
                          color: myColor,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.star_border,
                          color: myColor,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.star_border,
                          color: myColor,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.star_border,
                          color: myColor,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.star_border,
                          color: myColor,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Divider(color: Colors.grey, height: 4.0),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Add Review",
                      border: InputBorder.none,
                    ),
                    maxLines: 8,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true).pop('dialog');
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      color: myColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0),
                      ),
                    ),
                    child: Text(
                      "Rate Product",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('AlertDialog Title'),
        children: [
          Text("휴대폰 관리 공부앱"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/images/logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Laud You",
            style: textTheme().bodyText1,
          ),
          SimpleDialogOption(
            onPressed: () {
              //Navigator.pop(context, Department.treasury);
            },
            child: const Text('Treasury department'),
          ),
          SimpleDialogOption(
            onPressed: () {
              //Navigator.pop(context, Department.state);
            },
            child: const Text('State department'),
          ),
        ],
        // content: SingleChildScrollView(
        //   child: ListBody(
        //     children: const <Widget>[
        //       Text('This is a demo alert dialog.'),
        //       Text('Would you like to approve of this message?'),
        //     ],
        //   ),
        // ),
        // actions: <Widget>[
        //   TextButton(
        //     child: const Text('Approve'),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ],
      );
    },
  );
}
