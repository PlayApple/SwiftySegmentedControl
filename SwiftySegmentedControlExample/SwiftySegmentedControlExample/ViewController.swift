//
//  ViewController.swift
//  SwiftySegmentedControlExample
//
//  Created by LiuYanghui on 2017/1/10.
//  Copyright © 2017年 Yanghui.Liu. All rights reserved.
//

import UIKit
import SwiftySegmentedControl

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl1: SwiftySegmentedControl!
    
    @IBOutlet weak var segmentedControl2: SwiftySegmentedControl!
    
    @IBOutlet weak var segmentedControl3: SwiftySegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupNaviBar()
        setupControl1()
        setupControl2()
        setupControl3()
        setupControl4()
        setupControl5()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentedControl1ValueChanged(_ sender: SwiftySegmentedControl) {
        print("The selected index is \(sender.index) and the title is \(sender.titles[Int(sender.index)])")
    }
}

extension ViewController {
    fileprivate func setupNaviBar() {
        let navigationSegmentedControl = SwiftySegmentedControl(
            frame: CGRect(x: 35.0, y: 40.0, width: 200.0, height: 30.0),
            titles: ["Lights On", "Lights Off"],
            index: 0,
            backgroundColor: .darkGray,
            titleColor: .lightGray,
            indicatorViewBackgroundColor: UIColor(red:0.55, green:0.26, blue:0.86, alpha:1.00),
            selectedTitleColor: .white)
        navigationSegmentedControl.cornerRadius = 3.0
        navigationSegmentedControl.titleFont = UIFont(name: "Avenir", size: 13.0)!
        navigationSegmentedControl.selectedTitleFont = UIFont(name: "Avenir", size: 13.0)!
        navigationSegmentedControl.bouncesOnChange = false
        navigationSegmentedControl.addTarget(self, action: #selector(ViewController.navigationSegmentedControlValueChanged(_:)), for: .valueChanged)
        navigationItem.titleView = navigationSegmentedControl
    }
    
    // MARK: - Action handlers
    func navigationSegmentedControlValueChanged(_ sender: SwiftySegmentedControl) {
        if sender.index == 0 {
            print("Turning lights on.")
            view.backgroundColor = .white
        }
        else {
            print("Turning lights off.")
            view.backgroundColor = .darkGray
        }
    }
}

extension ViewController {
    /// Control 1: Created and designed in IB that announces its value on interaction
    fileprivate func setupControl1() {
        segmentedControl1.titles = ["Recent","Nearby","All"]
        segmentedControl1.titleFont = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        segmentedControl1.selectedTitleFont = UIFont(name: "HelveticaNeue-Medium", size: 13.0)!
        segmentedControl1.alwaysAnnouncesValue = true
        segmentedControl1.announcesValueImmediately = false
        print(segmentedControl1.titles)
    }
}

extension ViewController {
    /// Control 2: Exclusively defined in IB
    fileprivate func setupControl2() {
//        segmentedControl2.indicatorViewBorderWidth = 3
//        segmentedControl2.indicatorViewBorderColor = UIColor.blue.cgColor
    }
}

extension ViewController {
    /// Control 3: Many options & error handling
    fileprivate func setupControl3() {
        segmentedControl3.titles = ["One","Two","Three","Four","Five","Six"]
        segmentedControl3.titleFont = UIFont(name: "HelveticaNeue-Light", size: 14.0)!
        segmentedControl3.selectedTitleFont = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
        do {
            try segmentedControl3.setIndex(10, animated: false)
        }
        catch SwiftySegmentedControl.IndexError.indexBeyondBounds(let invalidIndex) {
            print("Tried setting invalid index \(invalidIndex) to demonstrate error handling.")
        }
        catch {
            print("An error occured")
        }
        try! segmentedControl3.setIndex(2, animated: false)
    }
    
}

extension ViewController {
    fileprivate func setupControl4() {
        // Control 4: Added as a subview
        let viewSegmentedControl = SwiftySegmentedControl(
            frame: CGRect(x: 0.0, y: 345.0, width: view.bounds.width, height: 50.0),
            titles: ["Artists", "Albums"],
            index: 1,
            backgroundColor: UIColor(red:0.11, green:0.12, blue:0.13, alpha:1.00),
            titleColor: .white,
            indicatorViewBackgroundColor: UIColor(red:0.11, green:0.12, blue:0.13, alpha:1.00),
            selectedTitleColor: UIColor(red:0.97, green:0.00, blue:0.24, alpha:1.00))
        viewSegmentedControl.autoresizingMask = [.flexibleWidth]
        viewSegmentedControl.cornerRadius = 0.0
        viewSegmentedControl.titleFont = UIFont(name: "HelveticaNeue", size: 16.0)!
        viewSegmentedControl.selectedTitleFont = UIFont(name: "HelveticaNeue", size: 16.0)!
        viewSegmentedControl.bouncesOnChange = false
        viewSegmentedControl.panningDisabled = true
        view.addSubview(viewSegmentedControl)
    }
}

extension ViewController {
    fileprivate func setupControl5() {
        // Control 5: Supported scorll
        let viewSegmentedControl = SwiftySegmentedControl(
            frame: CGRect(x: 0.0, y: 430.0, width: view.bounds.width, height: 50.0),
            titles: ["All", "New", "Pictures", "One", "Two", "Three", "Four", "Five", "Six", "Artists", "Albums", "Recent"],
            index: 1,
            backgroundColor: UIColor(red:0.11, green:0.12, blue:0.13, alpha:1.00),
            titleColor: .white,
            indicatorViewBackgroundColor: UIColor(red:0.11, green:0.12, blue:0.13, alpha:1.00),
            selectedTitleColor: UIColor(red:0.97, green:0.00, blue:0.24, alpha:1.00))
        viewSegmentedControl.autoresizingMask = [.flexibleWidth]
        viewSegmentedControl.indicatorViewInset = 0
        viewSegmentedControl.cornerRadius = 0.0
        viewSegmentedControl.titleFont = UIFont(name: "HelveticaNeue", size: 16.0)!
        viewSegmentedControl.selectedTitleFont = UIFont(name: "HelveticaNeue", size: 16.0)!
        viewSegmentedControl.bouncesOnChange = false
        viewSegmentedControl.panningDisabled = true
        viewSegmentedControl.indicatorViewLineColor = UIColor.red
        view.addSubview(viewSegmentedControl)
    }
}

