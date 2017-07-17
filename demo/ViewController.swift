//
//  ViewController.swift
//  demo
//
//  Created by niraj paul on 16/07/17.
//  Copyright © 2017 AQUQRIOUS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var popUpView2 = PopUpView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func popUp(_ sender: Any) {
        //let screenSize: CGRect = UIScreen.main.bounds

        PopUpView(frame: CGRect(x: 0, y: 20, width: view.frame.size.width, height: view.frame.size.height))
       
        
        // Do any additional setup after loading the view.
//        let categorySelectionView = Bundle.main.loadNibNamed("PopUpView", owner: self, options: nil)?[0] as! UIView
//        self.view = categorySelectionView

       // var btnShare: UIButton = (PopUpView.viewWithTag(101) as? UIButton)

//        let btnAction = categorySelectionView.viewWithTag(111) as! UIButton
//        btnAction.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)

       // print("\(btnAction)")
    }
   
    func buttonClicked(){

        
        var nibObjs: [Any]? = Bundle.main.loadNibNamed("PopUpView", owner: self, options: nil)
        let aView = nibObjs?[0] as? UIView ?? UIView()
        
        print("\(aView)")
       // aView.removeFromSuperview()
    }
    
}

