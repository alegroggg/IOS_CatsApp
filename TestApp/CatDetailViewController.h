//
//  CatDetailViewController.h
//  TestApp
//
//  Created by vm mac on 06/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CatDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *kittyName;
@property (weak, nonatomic) IBOutlet UILabel *kittyDesc;
@property (weak, nonatomic) IBOutlet UIImageView *kittyImage;

@property (strong,nonatomic) NSString * Name;
@property(strong,nonatomic) NSString * Desc;
@property(strong,nonatomic) NSString * Image;

@end
