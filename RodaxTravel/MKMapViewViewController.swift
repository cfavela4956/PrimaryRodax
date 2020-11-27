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
    
    @IBAction func onParksButtonPressed(_ sender: Any) {
          parksSearch()
    }
    
    func parksSearch()
    {
        print("parks found")
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "park"
        request.region = mapView.region
        request.resultTypes = .pointOfInterest
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            guard error == nil else {
                print(error)
                return
            }
            let places = response?.mapItems
            print(places)
            
            let allAnnotations = self.mapView.annotations
            self.mapView.removeAnnotations(allAnnotations)
            
            for place in places! {
                let annotation = MKPointAnnotation()
                annotation.coordinate = place.placemark.coordinate
                annotation.title = place.placemark.name
                annotation.subtitle = place.placemark.title
                self.mapView.addAnnotation(annotation)
                
                
            }
        }
    }
    @IBAction func onRestaurantsButtonPressed(_ sender: Any) {
           restaurantsSearch()
       }
       
       func restaurantsSearch()
          {
              print("restaurants found")
              
              let request = MKLocalSearch.Request()
              request.naturalLanguageQuery = "restaurant"
              request.region = mapView.region
              request.resultTypes = .pointOfInterest
              let search = MKLocalSearch(request: request)
              search.start { (response, error) in
                  guard error == nil else {
                      print(error)
                      return
                  }
                  let places = response?.mapItems
                  print(places)
                  
                  let allAnnotations = self.mapView.annotations
                  self.mapView.removeAnnotations(allAnnotations)
                  
                  for place in places! {
                      let annotation = MKPointAnnotation()
                      annotation.coordinate = place.placemark.coordinate
                      annotation.title = place.placemark.name
                      annotation.subtitle = place.placemark.title
                      self.mapView.addAnnotation(annotation)
                      
                      
                  }
              }
          }
 
}
