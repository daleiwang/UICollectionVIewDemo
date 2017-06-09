//
//  RootViewController.m
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/8.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import "RootViewController.h"
#import "CommonCollectionViewController.h"
#import "GuideCollectionViewController.h"
#import "WaterfallCollectionViewController.h"
#import "CustomCollectionViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CommonCollectionViewController *vc1 = [CommonCollectionViewController new];
    GuideCollectionViewController *vc2 = [GuideCollectionViewController new];
    WaterfallCollectionViewController *vc3 = [WaterfallCollectionViewController new];
    CustomCollectionViewController *vc4 = [CustomCollectionViewController new];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:vc4];
    self.viewControllers = @[nav1,nav2,nav3,nav4];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
