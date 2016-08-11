//
//  RequestViewController.m
//  TestApp
//
//  Created by vm mac on 06/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "RequestViewController.h"
#import "AppDelegate.h"

@implementation RequestViewController

-(void)viewDidLoad{
    _progress.hidden = true;
    
    //AppDelegate * del  = [[UIApplication sharedApplication] delegate];
    
    //_nameLabel.text = del.name;
    
}


- (IBAction)RequestSendClicked:(id)sender {
    
    _progress.hidden = false;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSString * stringUrl = @"https://dl.dropboxusercontent.com/u/72854246/json.txt";
        
        NSURL * url =[NSURL URLWithString:stringUrl];
        NSData * data = [NSData dataWithContentsOfURL:url];
        
        if (data != nil)
        {
            NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
            
            NSString * Name = [result objectForKey:@"Name"];
            NSString * Surname = [result objectForKey:@"Surname"];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                _nameLabel.text = Name;
                _surNameLabel.text = Surname;
            });
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            _progress.hidden = true;
        });
    });
}

@end
