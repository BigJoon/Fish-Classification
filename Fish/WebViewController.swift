//
//  WebViewController.swift
//  Fish
//
//  Created by 황영준 on 07/08/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import WebKit
import UIKit

class WebViewController: UIViewController{
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"http://hellohyndai.pythonanywhere.com/");
        let request = URLRequest(url : url!);
        webView.load(request);
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    
    
}


