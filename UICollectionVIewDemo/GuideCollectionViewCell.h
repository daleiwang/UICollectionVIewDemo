//
//  CollectionViewCell.h
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/7.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GuideCollectionViewCell;


@protocol GuideCollectionDelegate <NSObject>

@required
-(void)start:(GuideCollectionViewCell *)cell;

@end


@interface GuideCollectionViewCell : UICollectionViewCell

@property(nonatomic,weak) id<GuideCollectionDelegate> delagate;
@property(nonatomic,weak)IBOutlet UIImageView *iamgeVC;
@property(nonatomic,weak)IBOutlet UIButton *buttonStart;

@end
