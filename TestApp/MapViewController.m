//
//  MapViewController.m
//  Cats
//
//  Created by vm mac on 07/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

-(void)viewDidLoad{
    
    _Map.delegate = self;
    
    CLLocationCoordinate2D coords = CLLocationCoordinate2DMake([@"54.352" doubleValue], [@"18.646" doubleValue]);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.005, 0.005);
    MKCoordinateRegion region = MKCoordinateRegionMake(coords, span);
    MKPointAnnotation *annot = [[MKPointAnnotation alloc] init];
    [annot setCoordinate:coords];
    [annot setTitle:@"KITTY!"];
    _Map.region = region;
    
         [_Map addAnnotation:annot];
        [_Map selectAnnotation:annot animated:true];

   
    
}

-(MKAnnotationView*)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    
    MKPinAnnotationView* view = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil];
    view.enabled = true;
    view.canShowCallout = true;
    UIButton * button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    view.rightCalloutAccessoryView = button;
    return view;
}

@end
