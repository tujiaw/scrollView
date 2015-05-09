//
//  ViewController.swift
//  scrollView
//
//  Created by tutujiaw on 15/5/9.
//  Copyright (c) 2015年 tutujiaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button31: UIButton!
    @IBOutlet weak var button32: UIButton!
    @IBOutlet weak var button41: UIButton!
    @IBOutlet weak var topLabel: UILabel!
    
    let rowCount = 4
    let rowSpace = CGFloat(10.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        var contentWidth = CGFloat(0.0)
        var contentHeight = CGFloat(0.0)
        contentHeight = button41.frame.origin.y + button41.frame.size.height + 2 * rowSpace + topLabel.frame.height * 2
        
        self.scrollView.contentSize = CGSizeMake(contentWidth, contentHeight)
        
        self.scrollView.contentInset = UIEdgeInsetsMake(topLabel.frame.height + rowSpace, 0, 0, 0)
        println("offset:\(self.scrollView.contentOffset.y)")
        self.scrollView.contentOffset.y -= self.scrollView.contentInset.top
        
        println("content height:\(contentHeight)")
        println("height:\(UIScreen.mainScreen().bounds.height)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

