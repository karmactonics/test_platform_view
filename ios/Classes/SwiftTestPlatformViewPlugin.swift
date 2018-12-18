import Flutter
import UIKit

public class SwiftTestPlatformViewPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {    
    let testViewFactory = TestViewFactory()
    registrar.register(testViewFactory, withId: "TestView")    
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
