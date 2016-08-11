//
//  ViewController.h
//  TestApp
//
//  Created by vm mac on 04/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
- (IBAction)swich:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *swichProp;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@property (strong, nonatomic) NSMutableArray *arrayItems;

@end

