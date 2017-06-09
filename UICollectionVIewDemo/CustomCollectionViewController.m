//
//  CustomCollectionViewController.m
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/8.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import "CustomCollectionViewController.h"
#import "CustomCollectionViewCell.h"
#import "CustomCollectionViewLayout.h"

@interface CustomCollectionViewController ()

@property(nonatomic,strong)NSArray *imageArray;

@end

@implementation CustomCollectionViewController

static NSString * const reuseIdentifier = @"CustomCollectionViewCell";

-(instancetype)init{
    CustomCollectionViewLayout *layout = [CustomCollectionViewLayout new];
    layout.itemSize = CGSizeMake(230, 350);
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义";
    self.collectionView.backgroundColor = [UIColor yellowColor];
    // Register cell classes
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSArray *)imageArray{
    if (!_imageArray) {
        _imageArray = @[@"photo1.jpg",@"photo2.jpg",@"photo3.jpg",@"photo4.jpg",@"photo5.jpg",@"photo6.jpg",@"photo7.jpg",@"photo8.jpg",@"photo8.jpg"];
    }
    return _imageArray;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.imageArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    [cell.image setImage:[UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.item]]];
    return cell;
}

@end
