import 'package:flutter/material.dart';
import 'package:netflex/models/model_movie.dart';
import 'package:netflex/widget/box_slider.dart';
import 'package:netflex/widget/carousel_slider.dart';
import 'package:netflex/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

  // @override
  // _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.formMap({
      'title': '블랙 위도우1',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie1.jpg',
      'like': false
    }),
    Movie.formMap({
      'title': '블랙 위도우2',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie2.jpeg',
      'like': false
    }),
    Movie.formMap({
      'title': '블랙 위도우3',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie3.jpg',
      'like': false
    }),
    Movie.formMap({
      'title': '블랙 위도우4',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie4.jpeg',
      'like': false
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "images/logo.jpeg",
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
