//
//  Main.swift
//  project
//
//  Created by MZ333 on 11/21/18.
//  Copyright © 2018 MZ333. All rights reserved.
//

import UIKit

class login: UIViewController {
    var bol_flag = walkthrough()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("========================")
        print("im first function for calling:i am Did load method")
        print("as i initialize component in view controller in background")
        
// Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("========================")
        print("i am will appear method")
        print("i have second priority in execution")

        
        
    }
    
    
    
    //this functin execute before THis vc appear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         print("========================")
         print("i am Did appear method")
        print("i have third priority in execution")
        print("the flag is:\(flaging.bol_flag)")
        if flaging.bol_flag == false
        {
            if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "ID_container") as? container_walkthrough{
                
                present(pageViewController, animated: true, completion: nil)
            }
        }
    }
    
    
    
    
    
    
    
    //this new comment

@IBAction func load_again()
{
  
    //flaging.bol_flag = false
   /* if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "ID_main") as? Main_controller{
        print ("passssssed1")
        present(pageViewController, animated: true, completion: nil)
        print ("passssssed2")*/
    self.performSegue(withIdentifier: "GO_main", sender: nil)
        

}
    

}
