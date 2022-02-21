# laudyou_app

### 개발, 운영 build config 설정
상단의 main.dart 부분을 선택 Edit Configuration 을 하여
 - main.dart 에   Addtional arguments 에는 --flavor production 을 입력
 - main-dev.dart 에 Addtional arguments 에는 --flavor development 을 입력

=> 로컬에서 개발 시 main-dev 로 선택 후 작업을 합니다.
   

### 개발 사항 
 - TextEditingController 사용 시 Stateful wiget 을 사용해야 한다. ?? 조금 더 확인 필요



### package use link
 - modal 창 팝업
https://pub.dev/packages/modal_bottom_sheet/example

- alert 창
https://pub.dev/packages/adaptive_dialog

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


