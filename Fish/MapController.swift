//
//  MapController.swift
//  Fish
//
//  Created by 황영준 on 08/08/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapController: UIViewController {
    
    
    @IBOutlet weak var mapKitView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(latitude: 37.5572, longitude: 127.0453)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Hanyang Univ"
        annotation.subtitle = "정몽구관"
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: location, span: span)
        mapKitView.setRegion(region, animated: true)
        mapKitView.addAnnotation(annotation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
