//
//  CatDetailViewController.m
//  TestApp
//
//  Created by vm mac on 06/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "CatDetailViewController.h"

@implementation CatDetailViewController

- (IBAction)tapped:(UITapGestureRecognizer *)sender {

    NSLog(@"Tapped");
}

- (IBAction)nameTapped:(UITapGestureRecognizer *)sender {
    NSLog(@"Tapped");
}


-(void)viewDidLoad{
    _kittyName.text = self.Name;
    _kittyDesc.text = self.Desc;
    
    CGRect rect = CGRectMake(0,0,250,250);
    UIGraphicsBeginImageContext( rect.size );
    [[UIImage imageNamed:self.Image] drawInRect:rect];
    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    
    _kittyImage.layer.cornerRadius = 125;
    _kittyImage.layer.masksToBounds = true;
    _kittyImage.image = picture1;
    _kittyImage.frame = CGRectMake(0, 0, 250, 250);
    _kittyImage.contentMode = UIViewContentModeScaleAspectFill;
    
}



@end
