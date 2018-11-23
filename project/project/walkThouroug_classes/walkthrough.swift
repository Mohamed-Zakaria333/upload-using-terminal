//
//  ViewController.swift
//  project
//
//  Created by MZ333 on 11/20/18.
//  Copyright © 2018 MZ333. All rights reserved.
//

import UIKit

class walkthrough: UIViewController {
    //this for underline buttonTitl in swift
    //===============================
    
    let yourAttributes : [NSAttributedStringKey: Any] = [
        NSAttributedStringKey.font : UIFont(name: "Marker Felt", size: 15)! ,        NSAttributedStringKey.foregroundColor : UIColor.white,
        NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleSingle.rawValue]
    //.styleDouble.rawValue, .styleThick.rawValue, .styleNone.rawValue
    //===============================
    //Outlets
    //===============================
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var myimg: UIImageView!
    @IBOutlet var MainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var opacity_view: UIView!
    @IBOutlet var Next_btton:UIButton!
    //================================
    //VC_variables
    //================================
    var OPacity_color = UIColor(displayP3Red: 0.3, green: 0.6, blue: 0.1, alpha: 0.7)
    var img_name=""
    var main_label=""
    var sub_label=""
    var index = 0
    var changing = false
    //===============================
    override func viewDidAppear(_ animated: Bool) {
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
        //Button_inititalization
        //==============
      
        //==============
        pageControl.currentPage = index
        MainLabel.text=main_label
        subLabel.text=sub_label
        myimg.image=UIImage(named: img_name)
        //==============
         print(index)
        //==============
        switch index {
        case 0...1: Next_btton.setAttributedTitle(NSMutableAttributedString(string: "Skip",
                                                                            attributes: yourAttributes)
            , for: .normal)
            
        case 2: Next_btton.setAttributedTitle(NSMutableAttributedString(string: "Go",
                                                                                   attributes: yourAttributes)
            , for: .normal)
            
        default: break
        }
        //==============
        
        
        
        
        
        //==============
        //opacity_view.backgroundColor = UIColor.white.withAlphaComponent(0.7)
    }
    @IBAction func Next_btn(_ sender:UIButton)
    {
        print(index)
        switch index {
        case 0...1: // Next Button
            let pageViewController = parent as! container_walkthrough
            pageViewController.forward(index: index)
            
        case 2: // Done Button
            
            //dismiss this VC
            flaging.bol_flag  = true
          
            dismiss(animated: true, completion: nil)
            
        default: break
            
        }
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    } 
   //dynamic size of uilabel
    //
    





