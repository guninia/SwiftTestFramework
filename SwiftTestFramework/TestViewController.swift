//
//  TestViewController.swift
//  SwiftTestFramework
//
//  Created by Steven Huang on 2016/7/13.
//  Copyright © 2016年 MagV. All rights reserved.
//

import UIKit
import MMMaterialDesignSpinner

public class TestViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        let buttonFrame = CGRectMake(100.0, 100.0, 100.0, 100.0)
        let button: UIButton = UIButton(frame: buttonFrame)
        button.backgroundColor = UIColor.yellowColor()
        button.addTarget(self, action: #selector(TestViewController.buttonClicked(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
        let viewFrame: CGRect = CGRectMake(200.0, 200.0, 100.0, 100.0)
        let textView: TestView = TestView(frame: viewFrame)
        view.addSubview(textView)
        
        let spinner: MMMaterialDesignSpinner = MMMaterialDesignSpinner(frame: CGRectZero)
        view.addSubview(spinner)
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    public func showMessage(message: String)
    {
        let alertController: UIAlertController = UIAlertController(title: nil, message: message, preferredStyle: .Alert)
        weak var weakSelf: TestViewController? = self
        let action: UIAlertAction = UIAlertAction(title: "Confirm", style: .Default, handler: {
            (action: UIAlertAction) in
            weakSelf?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        })
        alertController.addAction(action)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func buttonClicked(sender: NSObject)
    {
        showMessage("Test it!")
    }
}
