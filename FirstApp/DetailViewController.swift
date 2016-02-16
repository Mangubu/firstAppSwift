//
//  DetailViewController.swift
//  FirstApp
//
//  Created by Mangubu on 15/02/2016.
//  Copyright © 2016 Mangubu. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    let locationManager = CLLocationManager()
    
    var fontaine: Fontaine?


    var detailItem: Fontaine? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.adress?.city
                fontaine = detail
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        locationManager.delegate = self
        
        
        if(locationManager.respondsToSelector("requestAlwaysAuthorization")) {
            locationManager.requestAlwaysAuthorization()
        }
        
        let location = CLLocationCoordinate2D(
            latitude: Double(fontaine!.location!.lat!),
            longitude: Double(fontaine!.location!.long!)
        )
        
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
            
        //3
        let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Distance : " + (fontaine?.distance?.description)! + "m. "
            annotation.subtitle = fontaine?.adress?.adress
            mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

