//
//  CollectionController.h
//  Cats
//
//  Created by vm mac on 12/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (strong, nonatomic) IBOutlet UICollectionView *collView;
@end
