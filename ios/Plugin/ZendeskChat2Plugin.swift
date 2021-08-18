import Foundation
import Capacitor
import ZendeskSDKMessaging

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ZendeskChat2Plugin)
public class ZendeskChat2Plugin: CAPPlugin {
    private let implementation = ZendeskChat2()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func initialize(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let accountKey = self.getConfigValue("accountKey") as? String
        }
    }

    @objc func setVisitorInfo(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let name = call.getString("name")
            let email = call.getString("email")
            let phone = call.getString("phoneNumber")
        }
    }

    @objc func open(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let department = call.getString("department") ?? "testing"
            let tags = call.getArray("tags", String.self) ?? [];
        }
    }
}
