//
//  BlueViewController.swift
//  practicasTelecomEnero
//
//  Created by u633168 on 19/01/2023.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabelsearch: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabelsearch.isHidden = true
        mySearchBar.delegate = self
    }
}

extension BlueViewController : UISearchBarDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        
        myLabelsearch.text = mySearchBar.text
        myLabelsearch.isHidden = false
    }
}
