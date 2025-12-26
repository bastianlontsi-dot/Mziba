import UIKit
import Flutter
import FirebaseCore
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // ✅ Initialisation de Firebase
    FirebaseApp.configure()
    // ✅ Clé Google Maps
    GMSServices.provideAPIKey("AIzaSyCRyntmD7dGu3X8j4FPMmfXXNMeTrrmDGY")
    // ✅ Enregistrement des plugins Flutter
    GeneratedPluginRegistrant.register(with: self)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
