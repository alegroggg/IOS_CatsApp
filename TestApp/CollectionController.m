//
//  CollectionController.m
//  Cats
//
//  Created by vm mac on 12/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "CollectionController.h"
#import "CollectionCell.h"
#import "CatCollectionDetailViewController.h"
#import "CollectionCell.h"

@implementation CollectionController

-(void)viewDidLoad{
    [_collView reloadData];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 16;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollItem" forIndexPath:indexPath];

//    [cell setBackgroundColor:[UIColor yellowColor]];
    CGRect rect = [[UIScreen mainScreen] bounds];
    
    
   
//cell.textLabel.text = @"Kitty";
  //  cell.textLabel.frame = CGRectMake(0, 175, (rect.size.width - 30) / 2, 25);
    
    CGRect rect2 = CGRectMake(0,0,(rect.size.width - 30) / 2,170);
    UIGraphicsBeginImageContext( rect2.size );
    [[UIImage imageNamed:@"cat4.jpg"] drawInRect:rect2];
    UIImage *picture1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
 
 //   cell.image.frame = CGRectMake(0, 0, (rect.size.width - 30) / 2, 170);
    cell.image.image = picture1;

  //  UILabel * label = [[UILabel alloc] init];
  //  label.frame =CGRectMake(0, 200, (rect.size.width - 30) / 2, 25);
  //  label.text = @"Kitty";
 //   label.textColor = [UIColor blackColor];
 //   cell.textLabel = label;
 //   cell.frame = CGRectMake(0, 0, 200, 100);
   
   // CGRect frame = CGRectMake(0, 180, (rect.size.width - 30) / 2, 200);
    
    
   // cell.textLabel.frame = frame;
    NSString *strX=[NSString stringWithFormat:@"%@ %ld",@"Kitty:",(long)indexPath.row];
    cell.textLabel.text = strX;
    
    [cell bringSubviewToFront:cell.textLabel];
    return cell;
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGRect rect = [[UIScreen mainScreen] bounds];
    
    return CGSizeMake((rect.size.width - 30) / 2, 200);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier  isEqual: @"CatCollDetail"])
    {
        NSIndexPath * indexPath =  _collView.indexPathsForSelectedItems[0];
        UICollectionViewCell *cell = [_collView cellForItemAtIndexPath:indexPath];
        
        CollectionCell * outCell = (CollectionCell*)cell;
        
        NSString * textLabel = outCell.textLabel.text;
        
        CatCollectionDetailViewController * descControler = segue.destinationViewController;
   //     Cat * kitty = [_arrayItems objectAtIndex:indexPath.row];
        
        descControler.Name = textLabel;
    }
}


@end
