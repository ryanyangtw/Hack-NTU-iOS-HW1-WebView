//
//  ViewController.swift
//  webView
//
//  Created by Ryan on 2015/4/14.
//  Copyright (c) 2015年 Ryan. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
  

  @IBOutlet weak var webView: UIWebView!
  @IBOutlet weak var searchBar: UISearchBar!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var url = NSURL(string: "http://guides.rubyonrails.org/")
    var request = NSURLRequest(URL: url!)
    webView!.loadRequest(request)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func goBack() {
    webView.goBack()
  }
  
  
  @IBAction func goForward() {
    webView.goForward()
  }

  
  @IBAction func refresh() {
    webView.reload()
  }


}



//MARK: - UISearchBar Delegate
extension WebViewController: UISearchBarDelegate {

  func searchBarSearchButtonClicked(searchBar: UISearchBar) {
    performSearch()
  }
  
  func performSearch() {
    var str = searchBar.text
    if !str.hasPrefix("http://") {
      str = "http://" + str
    }
    
    var url = NSURL(string: str)
    var request = NSURLRequest(URL: url!)
    webView.loadRequest(request)
  }
  
  
}




