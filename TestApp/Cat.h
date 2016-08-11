//
//  Cat.h
//  TestApp
//
//  Created by vm mac on 06/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject

@property(weak,nonatomic) NSString * name;
@property(nonatomic,copy) NSString * desc;
@property(weak,nonatomic) NSString * imageName;

@end
