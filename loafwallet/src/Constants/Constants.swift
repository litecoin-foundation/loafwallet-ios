//
//  Constants.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2016-10-24.
//  Copyright © 2016 breadwallet LLC. All rights reserved.
//

import UIKit

let π: CGFloat = .pi
  
/// Custom Event Enum: Events related to different user based actions
enum CustomEvent: String {
    /// App Launched
    case _20191105_AL = "APP_LAUNCHED"
    
    /// App Visit Send Controller
    case _20191105_VSC = "VISIT_SEND_CONTROLLER"
    
    /// Visit Receive Controller
    case _20202116_VRC = "VISIT_RECEIVE_CONTROLLER"
    
    /// Did Send LTC
    case _20191105_DSL = "DID_SEND_LTC"
    
    /// Updated LTC price
    case _20191105_DULP = "DID_UPDATE_LTC_PRICE"
    
    /// User tapped Buy tab
    case _20191105_DTBT = "DID_TAP_BUY_TAB"
    
    /// Entered dispatch group
    case _20200111_DEDG = "DID_ENTER_DISPATCH_GROUP"
    
    /// Left dispatch group
    case _20200111_DLDG = "DID_LEAVE_DISPATCH_GROUP"
    
    /// Rate not initialized
    case _20200111_RNI = "RATE_NOT_INITIALIZED"
    
    /// Fee per kb not initialized
    case _20200111_FNI = "FEEPERKB_NOT_INITIALIZED"
    
    /// Transaction not initialized
    case _20200111_TNI = "TRANSACTION_NOT_INITIALIZED"
    
    /// Wallet not initialized
    case _20200111_WNI = "WALLET_NOT_INITIALIZED"
    
    /// Phrase not initialized
    case _20200111_PNI = "PHRASE_NOT_INITIALIZED"
    
    /// Unable to sign transaction
    case _20200111_UTST = "UNABLE_TO_SIGN_TRANSACTION"
    
    /// Generalized Error
    case _20200112_ERR = "ERROR"
    
    /// Started resync
    case _20200112_DSR = "DID_START_RESYNC"
    
    /// Showed review request
    case _20200125_DSRR = "DID_SHOW_REVIEW_REQUEST"
    
    /// Unlocked in with PIN
    case _20200217_DUWP = "DID_UNLOCK_WITH_PIN"
    
    /// App Launched
    case _20200217_DUWB = "DID_UNLOCK_WITH_BIOMETRICS"
    
    /// Did donate
    case _20200223_DD = "DID_DONATE"
    
    /// Did cancel donation
    case _20200225_DCD = "DID_CANCEL_DONATE"
    
    /// Did use default fee per kb
    case _20200301_DUDFPK = "DID_USE_DEFAULT_FEE_PER_KB"
    
    /// User tapped support LF
    case _20201118_DTS = "DID_TAP_SUPPORT_LF"
    
    /// Started IFPS Lookup
    case _20201121_SIL = "STARTED_IFPS_LOOKUP"
    
    /// Resolved IPFS Address
    case _20201121_DRIA = "DID_RESOLVE_IPFS_ADDRESS"
    
    /// Failed to resolve IPFS Address
    case _20201121_FRIA = "FAILED_RESOLVE_IPFS_ADDRESS" 
	
    /// User tapped balance
    case _20200207_DTHB = "DID_TAP_HEADER_BALANCE"
    
    /// Ternio API Wallet details failure
    case _20210405_TAWDF = "TERNIO_API_WALLET_DETAILS_FAILURE"
     
    /// Heartbeat check If event even happens
    case _20210427_HCIEEH = "HEARTBEAT_CHECK_IF_EVENT_EVEN_HAPPENS" 
}

struct FoundationSupport {

    static let url = URL(string: "https://lite-wallet.org/support_address.html")!

    /// Litecoin Foundation main donation address: MVZj7gBRwcVpa9AAWdJm8A3HqTst112eJe
    /// As of Nov 14th, 2020
    static let supportLTCAddress = "MVZj7gBRwcVpa9AAWdJm8A3HqTst112eJe"
} 

struct APIServer {
     
    #if DEBUG
    static let baseUrl = "https://api-stage.lite-wallet.org/"
    #else
    static let baseUrl = "https://api-prod.lite-wallet.org/"
    #endif
} 

struct Padding {
    subscript(multiplier: Int) -> CGFloat {
        get {
            return CGFloat(multiplier) * 8.0
        }
    }
    
    subscript(multiplier: Double) -> CGFloat {
        get {
            return CGFloat(multiplier) * 8.0
        }
    }
}

struct DeviceType {
    
    enum Name  {
        static var iPhoneSE = "iPhone SE"
        static var iPhoneSE2 = "iPhone SE2"
        static var iPhone7 = "iPhone 7"
        static var iPhone8 = "iPhone 8"
        static var iPhone8Plus = "iPhone 8+"
        static var iPhoneXSMax = "iPhone Xs Max"
        static var iPhone11ProMax = "iPhone 11 Pro Max"
        static var iPhone12Pro = "iPhone 12 Pro"
        static var iPhone12ProMax = "iPhone 12 Pro Max"
        static var iPadPro = "iPad Pro (12.9-inch) (3rd generation)"
    }
    
}

struct C {
    static let padding = Padding()
    struct Sizes {
        static let buttonHeight: CGFloat = 48.0
        static let headerHeight: CGFloat = 48.0
        static let largeHeaderHeight: CGFloat = 220.0
        static let logoAspectRatio: CGFloat = 125.0/417.0
    }
    static var defaultTintColor: UIColor = {
        return UIView().tintColor
    }()
    static let animationDuration: TimeInterval = 0.3
    static let secondsInDay: TimeInterval = 86400
    static let maxMoney: UInt64 = 84000000*100000000
    static let satoshis: UInt64 = 100000000
    static let walletQueue = "com.litecoin.walletqueue"
    static let btcCurrencyCode = "LTC"
    static let null = "(null)"
    static let maxMemoLength = 250
    static let feedbackEmail = "feedback@litecoinfoundation.zendesk.com"
    static let supportEmail = "support@litecoinfoundation.zendesk.com"
    /// URL for LiteWallet support desk
    static let litewalletSupportURL = "https://litewallet.io"
    
    static let reviewLink = "https://itunes.apple.com/app/loafwallet-litecoin-wallet/id1119332592?action=write-review"
    static var standardPort: Int {
        return E.isTestnet ? 19335 : 9333
    }
    
    static let troubleshootingQuestions = """
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <style type="text/css">
            body {
                margin:0 0 0 0;
                padding:0 0 0 0 !important;
                background-color: #ffffff !important;
                font-size:12pt;
                font-family:'Lucida Grande',Verdana,Arial,sans-serif;
                line-height:14px;
                color:#303030; }
            table td {border-collapse: collapse;}
            td {margin:0;}
            td img {display:block;}
            a {color:#865827;text-decoration:underline;}
            a:hover {text-decoration: underline;color:#865827;}
            a img {text-decoration:none;}
            a:visited {color: #865827;}
            a:active {color: #865827;}
            p {font-size: 12pt;}
          </style>
        </head>
        <body>
        <table width="400" border="0" cellpadding="5" cellspacing="5" style="margin: auto;">
            <tr>
                <td colspan="2" align="left" style="padding-top:7px; padding-bottom:7px; border-top: 3px solid #777; border-bottom: 1px dotted #777;">
                    <span style="font-size: 13; line-height: 16px;" face="'Lucida Grande',Verdana,Arial,sans-serif">
                        <div>Please reply to this email with the following information so that we can prepare to help you solve your Litewallet issue.</div>
                      <br>
                         <div>1. What version of software running on your mobile device (e.g.; iOS 13.7 or iOS 14)?</div>
                          <br>
                          <br>
                            <div>2. What version of Litewallet software is on your mobile device (found on the login view)?</div>
                          <br>
                          <br>
                            <div>3. What type of iPhone do you have?</div>
                          <br>
                          <br>
                            <div>4. How we can help?</div>
                          <br>
                          <br>
                    </span>
                </td>
          </tr>
        <br>
        </table>
        </body>
        </html>
    """
}

struct AppVersion {
    static let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
    static let versionNumber = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    static let string = "v." + versionNumber! + " (\(buildNumber!))"
}

