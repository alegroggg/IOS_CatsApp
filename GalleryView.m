//
//  GalleryView.m
//  Cats
//
//  Created by vm mac on 08/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "GalleryView.h"

@implementation GalleryView

-(void)viewDidLoad{
    
  
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat width =  screenRect.size.width;
    CGFloat height = _ScrollView.frame.size.height;
    _ScrollView.showsHorizontalScrollIndicator = false;
    _ScrollView.showsVerticalScrollIndicator = false;
    _ScrollView.delegate = self;
    UIImageView *imageOne = [[UIImageView alloc] init];
    imageOne.frame = CGRectMake(0, 0, width, height);
    imageOne.image = [UIImage imageNamed:@"cat1.jpg"];
    
    imageOne.frame = CGRectMake(0, 0, width, height);
    
    UIImageView *imageTwo = [[UIImageView alloc] init];
    imageTwo.frame = CGRectMake(width, 0, width, height);
    imageTwo.image = [UIImage imageNamed:@"cat3.JPG"];
    
    UIImageView *imageThree = [[UIImageView alloc] init];
    imageThree.frame = CGRectMake(width*2, 0, width, height);
    imageThree.image = [UIImage imageNamed:@"cat4.jpg"];
    
    [_ScrollView addSubview:imageOne];
    [_ScrollView addSubview:imageTwo];
    [_ScrollView addSubview:imageThree];
    
    _ScrollView.contentSize = CGSizeMake(screenWidth *3, 0);
}



-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

    NSInteger currentPage = (int)(scrollView.contentOffset.x / scrollView.frame.size.width);
    
    _paging.currentPage = currentPage;
}



@end
