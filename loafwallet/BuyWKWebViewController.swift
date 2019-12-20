//
//  BuyWKWebViewController.swift
//  loafwallet
//
//  Created by Kerry Washington on 12/18/19.
//  Copyright © 2019 Litecoin Foundation. All rights reserved.
//

import UIKit
import WebKit

class BuyWKWebViewController: UIViewController, WKNavigationDelegate, WKScriptMessageHandler {
 
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var wkWebView: WKWebView!
    @IBOutlet weak var currentAddressLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var didDismissChildView: (() -> ())? 

    private let uuidString : String = {
        return  UIDevice.current.identifierForVendor?.uuidString ?? ""
    }()
    private let currentWalletAddress : String = {
        return WalletManager.sharedInstance.wallet?.receiveAddress ?? ""
    }()
    private let currencyCode : String = {
        let localeCode = Locale.current.currencyCode ?? "USD"
        return Currency.returnSimplexSupportedFiat(givenCode: localeCode)
    }()
 
    private let appInstallDate : Date = {
         if let documentsFolder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last {
                if let installDate = try! FileManager.default.attributesOfItem(atPath: documentsFolder.path)[.creationDate] as? Date {
                    return installDate
                }
            }
        return Date()
    }()
    
    private let wkProcessPool = WKProcessPool()
    var partnerPrefixString : String?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        loadRequest()
     }

    private func setupSubViews() {
        currentAddressLabel.text = currentWalletAddress
    }
    
    private func loadRequest() {
        
        let contentController = WKUserContentController()
        contentController.add(self, name: "callback")

        let config = WKWebViewConfiguration()
        config.processPool = wkProcessPool
        config.userContentController = contentController
    
        wkWebView.navigationDelegate = self
        wkWebView.allowsBackForwardNavigationGestures = true
        
        let timestamp = Int(appInstallDate.timeIntervalSince1970)
        
        let urlString =  "https://buy.loafwallet.org/?address=\(currentWalletAddress)&code=\(currencyCode)&idate=\(timestamp)&uid=\(uuidString)"
        
        guard let url = URL(string: urlString) else {
        NSLog("ERROR: URL not initialized")
            return
        }
         
        let request = URLRequest(url: url)
        wkWebView.load(request)
    }
     
    @IBAction func backAction(_ sender: Any) {
       didDismissChildView?()
    }
    
    func closeNow() {
       didDismissChildView?()
    }
    
}

extension BuyWKWebViewController {
    
    // MARK: - WK Navigation Delegate
    
    open func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction,
                      decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let url = navigationAction.request.url?.absoluteString {
            let mutableurl = url
            if mutableurl.contains("/close") {
                DispatchQueue.main.async {
                    self.closeNow()
                }
            }
        }
        return decisionHandler(.allow)
    }
     
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        guard let response = message.body as? String else { return }

        let URLString = URL(string: "https://checkout.simplexcc.com/payments/new")
        
        var req = URLRequest(url: URLString!)
        req.httpBody = Data(response.utf8)
        req.httpMethod = "POST"
        
        DispatchQueue.main.async {
            let browser = BRBrowserViewController()
            browser.load(req)
            self.present(browser, animated: true, completion: nil)
        }
    }
}