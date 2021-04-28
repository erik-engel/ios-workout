//
//  ViewControllerMap.swift
//  mandatory2
//
//  Created by Erik R. Engel Henriksen on 16/04/2021.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 55.65003607059894, longitude: 12.51485085236499)
        annotation.title = "Udendørs træning Valby"
        annotation.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 55.64623145255543, longitude: 12.495592136260038)
        annotation2.title = "Udendørs træning Vigerslevsvej"
        annotation2.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 55.65843082517954, longitude: 12.586264219465322)
        annotation3.title = "Udendørs træning Amagerfælled"
        annotation3.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 55.68324592011872, longitude: 12.49334102936014)
        annotation4.title = "Udendørs træning Grøndals Parkvej"
        annotation4.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 55.69084110748513 , longitude: 12.466758171387232)
        annotation5.title = "Udendørs træning Damhusengen"
        annotation5.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 55.649456982609095, longitude: 12.600455371554595)
        annotation6.title = "Udendørs træning Sundby Idrætspark"
        annotation6.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 55.66719209965585, longitude: 12.624974720004495)
        annotation7.title = "Udendørs træning Strandlodsvej"
        annotation7.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 55.66719209965585, longitude: 12.624974720004495)
        annotation8.title = "Udendørs træning Frederiks Brygge"
        annotation8.subtitle = "Fedt sted at træne. Der er alt hvad man skal bruge til en god workout!"
        
        let centercoordinate = CLLocationCoordinate2D(latitude: 55.66730800957012, longitude: 12.545820289278012)
        mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)
        mapView.addAnnotation(annotation6)
        mapView.addAnnotation(annotation7)
        mapView.addAnnotation(annotation8)
        let region = MKCoordinateRegion(center: centercoordinate, latitudinalMeters: 9000, longitudinalMeters: 9000)
        mapView.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
