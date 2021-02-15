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
    @IBOutlet weak var wkWebContainerView: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var currentAddressButton: UIButton!
    @IBOutlet weak var copiedLabel: UILabel!
 
    var didDismissChildView: (() -> ())?
    
    var partnerName: PartnerName?

    private let uuidString : String = {
        return  UIDevice.current.identifierForVendor?.uuidString ?? ""
    }()
    
    private let currentWalletAddress : String = {
        return WalletManager.sharedInstance.wallet?.receiveAddress ?? ""
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
     
    var currencyCode: String = "USD"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        loadRequest()
     }

    private func setupSubViews() {
        currentAddressButton.setTitle(currentWalletAddress, for: .normal)
        currentAddressButton.setTitle("Copied", for: .selected)
        copiedLabel.text = ""
        copiedLabel.alpha = 0.0
     }
    
    func loadRequest() {
        
        
        guard let partnerName = self.partnerName else { return }
        
        let contentController = WKUserContentController()
        contentController.add(self, name: "callback")
  
        let config = WKWebViewConfiguration()
        config.processPool = wkProcessPool
        config.userContentController = contentController
        
        let wkWithFooter = CGRect(x: 0, y: 0, width: self.wkWebContainerView.bounds.width,
                                  height: self.wkWebContainerView.bounds.height - 100)
        let wkWebView = WKWebView(frame:wkWithFooter, configuration: config)
        wkWebView.navigationDelegate = self
        wkWebView.allowsBackForwardNavigationGestures = true
        wkWebView.contentMode = .scaleAspectFit
        wkWebView.autoresizesSubviews = true
        wkWebView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.wkWebContainerView.addSubview(wkWebView)
        
        
        var urlString: String
        
        //MARK: - Partner Constructor
        switch partnerName {
            case .simplex:
                let timestamp = Int(appInstallDate.timeIntervalSince1970)
                urlString =  APIServer.baseUrl + "?address=\(currentWalletAddress)&code=\(currencyCode)&idate=\(timestamp)&uid=\(uuidString)"
            case .moonpay:
                urlString =  APIServer.baseUrl
        }
        
        guard let url = URL(string: urlString) else {
            NSLog("ERROR: URL not initialized")
            return
        }
         
        let request = URLRequest(url: url)
        wkWebView.load(request)
    }
    
    @IBAction func didTapCurrentAddressButton(_ sender: Any) {
        UIPasteboard.general.string = currentWalletAddress
        copiedLabel.alpha = 1
        copiedLabel.text = S.Receive.copied
        UIView.animate(withDuration: 2.0, delay: 0.1, options: .curveEaseInOut, animations: {
            self.copiedLabel.alpha = 0.0
        }, completion: nil)

    }
    
    @IBAction func backAction(_ sender: Any) {
       didDismissChildView?()
    }
}

extension BuyWKWebViewController {
    
    // MARK: - WK Navigation Delegate
    
    open func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction,
                      decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        return decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("document.readyState", completionHandler: { (complete, error) in
            if complete != nil { }
        })
    }
    
    
    func userContentController(_ userContentController: WKUserContentController,
                               didReceive message: WKScriptMessage) {

    }
     
}
