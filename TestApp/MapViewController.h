//
//  MapViewController.h
//  Cats
//
//  Created by vm mac on 07/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController : ViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *Map;

@end
