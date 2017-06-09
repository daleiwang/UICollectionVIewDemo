//
//  CollectionViewController.m
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/7.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import "GuideCollectionViewController.h"
#import "GuideCollectionViewCell.h"


@interface GuideCollectionViewController ()<GuideCollectionDelegate>

@property(nonatomic,strong)NSArray*arrayList;

@end

@implementation GuideCollectionViewController

static NSString * const reuseIdentifier = @"GuideCollectionViewCell";

-(instancetype)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    //引导页面大小和屏幕一致
    layout.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height + 20);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    //横向滑动
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"引导页";
    self.navigationController.navigationBarHidden = YES;
    // Register cell classes
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([GuideCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    // 开启分页
    self.collectionView.pagingEnabled = YES;
    // 隐藏水平滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    // 取消弹簧效果
    self.collectionView.bounces = NO;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UICollectionViewDataSource>

-(NSArray *)arrayList{
    if (!_arrayList) {
        _arrayList = @[@"appIntro1",@"appIntro2",@"appIntro3"];
    }
    return _arrayList;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.arrayList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GuideCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    //设置Cell显示的图片
    [cell.iamgeVC setImage:[UIImage imageNamed:[self.arrayList objectAtIndex:indexPath.item]]];
    cell.delagate = self;
    //判断在尾页的时候显示出“启动”Button
    if (indexPath.item == self.arrayList.count - 1) {
        cell.buttonStart.hidden = NO;
    } else {
        cell.buttonStart.hidden = YES;
    }
    return cell;
}

#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"------%zd", indexPath.section);
    NSLog(@"------%zd", indexPath.item);
}

#pragma mark <UICollectionViewDelegate>

-(void)start:(GuideCollectionViewCell *)cell{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
