//
//  RequestViewController.h
//  TestApp
//
//  Created by vm mac on 06/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "ViewController.h"

@interface RequestViewController : ViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *surNameLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *progress;

@end
