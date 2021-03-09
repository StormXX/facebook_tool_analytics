import Flutter
import UIKit
import FBSDKCoreKit
import FacebookCore

public class SwiftFacebookToolAnalyticsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "facebook_tool_analytics", binaryMessenger: registrar.messenger())
        let instance = SwiftFacebookToolAnalyticsPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "logEvent":
            handleLogEvent(call, result: result)
            break
        case "logPurchase":
            handleLogPurcahse(call, result: result)
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func handleLogEvent(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as? [String: Any] ?? [String: Any]()
        let eventName = arguments["name"] as! String
        let parameters = arguments["parameters"] as? [String: Any] ?? [String: Any]()
        
        // Analytics.logEvent(eventName, parameters: parameters)
        
        result(nil)
    }
    
    private func handleLogPurcahse(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let arguments = call.arguments as? [String: Any] ?? [String: Any]()
        let currency = arguments["currency"] as! String
        let price = arguments["price"] as! Double
        let productID = arguments["product_id"] as! String
        
        // Analytics.logEvent(AnalyticsEventPurchase, parameters: [
        //     AnalyticsParameterCurrency: currency,
        //     AnalyticsParameterValue: price,
        //     "productID": productID
        // ])
        
        result(nil)
    }
}
