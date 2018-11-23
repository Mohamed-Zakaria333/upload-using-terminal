//
//  ViewController.swift
//  project
//
//  Created by MZ333 on 11/20/18.
//  Copyright © 2018 MZ333. All rights reserved.
//

import UIKit

class container_walkthrough: UIPageViewController,UIPageViewControllerDataSource{
    
    
var pageHeadings = ["Personalize", "Locate", "Discover"]
var pageimages = ["1","2","3"]
var pageContent = ["Pin your favorite restaurants and create your own food guide",
                       "Search and locate your favourite restaurant on Maps",
                       "Find restaurants pinned by your friends and other foodies around the world"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward,
                               animated: true, completion: nil)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! walkthrough).index
        index += 1
        return contentViewController(at: index)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! walkthrough).index
        index -= 1
        return contentViewController(at: index)
    }
    func contentViewController(at index: Int) -> walkthrough?
    {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        
        if let pageContentViewController =
            storyboard?.instantiateViewController(withIdentifier:
                "ID_content") as? walkthrough {
            pageContentViewController.img_name = pageimages[index]
            pageContentViewController.index = index
            pageContentViewController.main_label = pageHeadings[index]
            pageContentViewController.sub_label = pageContent[index]
            return pageContentViewController
        }
        return nil
    }
    
    func forward(index: Int) {
        if let nextViewController = contentViewController(at: index + 1) {
            setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
}
    




