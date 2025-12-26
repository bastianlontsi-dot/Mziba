# flutter mziba (Backend #firebase )

features

- sign in ,sign up
- register device token on sign in (used for chatting to send notification to specific device)
- real time add , like and comment to a post
- send friend request, ,#chat with friends with notifications
- friend profile screen
- Add story
- Fcm notifications
- subscribe to topic channel notifications
- cashing & more features

dart run flutter_native_splash:create --path=native_splash.yaml
./gradlew signingReport
flutter build apk --split-per-abi --release
flutter pub run build_runner build

storePassword=Mziba2025
keyPassword=Mziba2025
keyAlias=mziba-alias
storeFile=../app/mziba-key.jks

# run apk && appbundle

./build_release.sh

# deploy deeplink

firebase deploy --only hosting

# Problem with Skeleton 
./C:\Users\123ba\AppData\Local\Pub\Cache\hosted\pub.dev\skeletonizer-1.4.3\lib\src\painting
This is a known compatibility error between Flutter 3.24+ (Dart 3.5+) and older versions of the package skeletonizer, which do not yet implement the new Canvas APIs:
Canvas.clipRSuperellipse
Canvas.drawRSuperellipse
Flutter recently added these methods

# Solution:
## /skeletonizer_painting_context.dart
@override
void clipRSuperellipse(RSuperellipse rsuperellipse, {bool doAntiAlias = true}) {
// No-op for compatibility with Flutter 3.30+
}

@override
void drawRSuperellipse(RSuperellipse rsuperellipse, Paint paint) {
// No-op for compatibility with Flutter 3.30+
}

## uniting_painting_context.dart
@override
void clipRSuperellipse(RSuperellipse rsuperellipse, {bool doAntiAlias = true}) {}

@override
void drawRSuperellipse(RSuperellipse rsuperellipse, Paint paint) {}



