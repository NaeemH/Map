//
//  ViewController.swift
//  Map
//
//  Created by Naeem on 11/12/16.
//  Copyright © 2016 Naeem. All rights reserved.
// heheXD

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(48.88182, 2.43952)
        let span = MKCoordinateSpanMake(0.2, 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        let annotation = MKPointAnnotation()
        
        Map.setRegion(region, animated: true)
        annotation.coordinate = location
        annotation.title = "Pizzeria"
        annotation.subtitle = "Romeos"
        
        Map.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

