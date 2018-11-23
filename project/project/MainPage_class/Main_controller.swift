//
//  Main_controller.swift
//  project
//
//  Created by MZ333 on 11/22/18.
//  Copyright © 2018 MZ333. All rights reserved.
//

import UIKit

class Main_controller: UIViewController,UISearchBarDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   //Outlets
   //===========
    @IBOutlet var My_collection:UICollectionView!
    @IBOutlet var searching:UISearchBar!
   //===========
    var cell_width = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        //Registraation
        //==================
        //withoutNib
        //collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        //let screenHeight = screenSize.height
        cell_width = Int((screenWidth/2)-24)
        let nib = UINib(nibName: "collection_cell", bundle: nil)
        My_collection?.register(nib, forCellWithReuseIdentifier: "Col_cell")
        print ("im passed")
        //===================
    }
    
    
    
    
    
    
   //===================================
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 80
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectioncell = My_collection.dequeueReusableCell(withReuseIdentifier: "Col_cell", for: indexPath) as! collection_cell
        collectioncell.ProdIMG.image = UIImage(named: "C1")
        collectioncell.Prodname.text = "Awsem product"
    
         print ("im in acell")
        return collectioncell
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(indexPath.row % 2 == 0)
        {
         return CGSize(width: cell_width, height: 320)
            
        }
        return CGSize(width: cell_width, height: 295)
        
        
        
        
        
        
    }
    
    
  //==================================
   //searching
    //===============
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Do some search stuff
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // Stop doing the search stuff
        // and clear the text in the search bar
        searchBar.text = ""
        // Hide the cancel button
        searchBar.showsCancelButton = false
        // You could also change the position, frame etc of the searchBar
    }
    
    
    
    
    //===============
    
    
    
    
  
}

    

    











