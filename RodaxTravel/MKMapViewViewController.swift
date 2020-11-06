//
//  MKMapViewViewController.swift
//  RodaxTravel
//
//  Created by Student on 10/14/20.
//  Copyright © 2020 Student. All rights reserved.
//

import MapKit
import UIKit

class MKMapViewViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        centerToLocation(location: locations.last!)
        
        }
    
func centerToLocation(location: CLLocation) {
    let regionRadius: CLLocationDistance = 1000
    let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius);    mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
}
