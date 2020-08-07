import Foundation
import AuthenticationServices
import Security

@objc(FixiPhoneXViewport) class FixiPhoneXViewport : CDVPlugin {

    // See: https://www.thetopsites.net/article/53755369.shtml
    //
    override func pluginInitialize() {
        if #available(iOS 11.0, *) {
            webView.scrollView.contentInsetAdjustmentBehavior = .never;
        }
    }
}
