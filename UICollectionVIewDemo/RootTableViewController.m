//
//  RootTableViewController.m
//  UICollectionVIewDemo
//
//  Created by DaLei on 2017/6/9.
//  Copyright © 2017年 DaLei. All rights reserved.
//

#import "RootTableViewController.h"
#import "CommonCollectionViewController.h"
#import "GuideCollectionViewController.h"
#import "WaterfallCollectionViewController.h"
#import "CustomCollectionViewController.h"

static NSString * const reuseIdentifier = @"reuseIdentifier";

@interface RootTableViewController ()

@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"面皮大师";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    if (indexPath.row == 0) {
        [cell.textLabel setText:@"基础Cell"];
    }
    if (indexPath.row == 1) {
        [cell.textLabel setText:@"引导页"];
    }
    if (indexPath.row == 2) {
        [cell.textLabel setText:@"瀑布流"];
    }
    if (indexPath.row == 3) {
        [cell.textLabel setText:@"自定义"];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        CommonCollectionViewController *vc = [CommonCollectionViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }
    if (indexPath.row == 1) {
        GuideCollectionViewController *vc = [GuideCollectionViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }
    if (indexPath.row == 2) {
        WaterfallCollectionViewController *vc = [WaterfallCollectionViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }
    if (indexPath.row == 3) {
        CustomCollectionViewController *vc = [CustomCollectionViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
