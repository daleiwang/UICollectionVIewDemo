//
//  WaterfallCollectionViewLayout.h
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/8.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WaterfallCollectionViewLayout;

@protocol WaterfallCollectionViewDelegate <NSObject>

@required
- (CGFloat)waterflowLayout:(WaterfallCollectionViewLayout *)waterflowLayout heightForItemAtIndex:(NSUInteger)index itemWidth:(CGFloat)itemWidth;

@optional
- (NSInteger)columnCountInWaterflowLayout:(WaterfallCollectionViewLayout *)waterflowLayout;
- (CGFloat)columnMarginInWaterflowLayout:(WaterfallCollectionViewLayout *)waterflowLayout;
- (CGFloat)rowMarginInWaterflowLayout:(WaterfallCollectionViewLayout *)waterflowLayout;
- (UIEdgeInsets)edgeInsetsInWaterflowLayout:(WaterfallCollectionViewLayout *)waterflowLayout;

@end


@interface WaterfallCollectionViewLayout : UICollectionViewLayout

@property (nonatomic, weak) id<WaterfallCollectionViewDelegate> delegate;

@end
