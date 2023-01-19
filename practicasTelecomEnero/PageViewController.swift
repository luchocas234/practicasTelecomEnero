//
//  PageViewController.swift
//  practicasTelecomEnero
//
//  Created by u633168 on 19/01/2023.
//

import UIKit

class PageViewController: UIPageViewController {

    private var myControllers : [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vcPink = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
        
        let vcBlue = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcBlue")
        
        myControllers.append(vcBlue)
        myControllers.append(vcPink)
        
        setViewControllers([vcBlue], direction: .forward, animated:false)
        
        dataSource = self
    }
    
    
}
extension PageViewController : UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 0{
            return myControllers.last
        }
        return myControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = myControllers.firstIndex(of: viewController)
        if index == 0{
            return myControllers.last
        }
        return myControllers.first
    }
    
    
}
