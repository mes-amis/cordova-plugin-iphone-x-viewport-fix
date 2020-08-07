import Foundation
import Security

@objc(FixiPhoneXViewport) class FixiPhoneXViewport : CDVPlugin {
    override func pluginInitialize() {
        if #available(iOS 12.0, *) {
            NotificationCenter.default.addObserver(self, selector: #selector(FixiPhoneXViewport.methodOfReceivedNotification(notification:)), name: Notification.Name("UIKeyboardWillHideNotification"), object: nil)
        }
    }

    @objc func methodOfReceivedNotification(notification: Notification) {
        for view in webViewEngine.engineWebView.subviews {
            if let scrollView = view as? UIScrollView {
                scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
            }
        }
    }
}
