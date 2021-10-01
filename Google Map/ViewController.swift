//
//  ViewController.swift
//  Google Map
//
//  Created by Laksh Purbey on 01/10/2021.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                

        let camera = GMSCameraPosition.camera(withLatitude: 27.6631092, longitude: 85.3168638, zoom: 15.0)
           let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
           self.view.addSubview(mapView)
        
           // Creates a marker in the center of the map.
           let marker = GMSMarker()
           marker.position = CLLocationCoordinate2D(latitude: 27.6631092, longitude: 85.3168638)
           marker.title = "Kathmandu ,Patan"
           marker.snippet = "Nepal"
           marker.map = mapView

    }


}

