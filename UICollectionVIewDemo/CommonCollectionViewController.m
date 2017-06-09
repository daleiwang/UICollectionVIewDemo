//
//  CommonCollectionViewController.m
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/8.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import "CommonCollectionViewController.h"
#import "CommonCollectionViewCell.h"

@interface CommonCollectionViewController ()

@end

@implementation CommonCollectionViewController

static NSString * const reuseIdentifier = @"CollectionViewCell";

-(instancetype)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(103, 103);
    // 设置最小行间距
    layout.minimumLineSpacing = 20;
    // 设置垂直间距
    layout.minimumInteritemSpacing = 0;
    // 设置边缘的间距，默认是{0，0，0，0}
    layout.sectionInset = UIEdgeInsetsMake(20, 20, 20, 20);
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"基础Cell";
    // Register cell classes
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CommonCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 40;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CommonCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"------%zd", indexPath.section);
    NSLog(@"------%zd", indexPath.item);
}

@end
