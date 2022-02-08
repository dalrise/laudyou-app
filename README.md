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


## 웹배포
npm install --global surge 설치 후  build/web 폴더에서
surge 실행
아이디, 패스워드 입력 후 엔터 하면 현재 디렉토리 upload 및 자동으로 경로 생성
npm install --global surge

http://harsh-plane.surge.sh