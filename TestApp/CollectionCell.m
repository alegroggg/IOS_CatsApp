//
//  CollectionCell.m
//  Cats
//
//  Created by vm mac on 12/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell


-(void)prepareForReuse{
    [super prepareForReuse];
    self.image.image = nil;
  //  self.textLabel.text = nil;
}

-(void)layoutSubviews{
    [super layoutSubviews];
     CGRect rect = [[UIScreen mainScreen] bounds];
     CGRect frame = CGRectMake(0, 175, (rect.size.width - 30) / 2, 20);
    
     self.image.frame = CGRectMake(0, 0, (rect.size.width - 30) / 2, 170);
     self.textLabel.frame = frame;
}

@end
