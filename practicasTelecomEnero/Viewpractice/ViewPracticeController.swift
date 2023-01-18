//
//  ViewPracticeController.swift
//  practicasTelecomEnero
//
//  Created by u633168 on 18/01/2023.
//

import Foundation
import UIKit
import MapKit
import WebKit

class ViewPracticeController : UIViewController{
    
    @IBOutlet weak var myMaps: MKMapView!
    
    @IBOutlet weak var myWeb: WKWebView!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        
        //My Web
        myWeb.load(URLRequest(url: URL(string: "https://google.com")!))
        //My Maps-34.62869742945695, -58.449415375083326
        myMaps.centerCoordinate = CLLocationCoordinate2D(latitude: -34.62869742945695, longitude: -58.449415375083326)
    }
}
