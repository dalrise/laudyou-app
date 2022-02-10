# laudyou_app

## validator
https://pub.dev/documentation/validators/latest/validators/validators-library.html

## 아이콘 경로 
https://api.flutter.dev/flutter/material/Icons-class.html


## model json 파일 generate
flutter pub add json_annotation
dart pub add build_runner --dev
dart pub add json_serializable --dev

==> flutter packages pub run build_runner build


## flutter upgrade 
1. android studio update -> Help > Check for updates (윈도우의 경우 설치)
2. android studio termial 에서 flutter upgrade 실행


## splash 처리
https://pub.dev/packages/flutter_native_splash 작업 
 - lottie 는 동작하지 않는다.
   
 - 설정 파일 (flutter_native_splash.yaml)
   설정 변경 시 아래 명령 실행
 - flutter pub run flutter_native_splash:create
