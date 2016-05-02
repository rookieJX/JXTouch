//
//  ViewController.m
//  JXTouch
//
//  Created by 王加祥 on 16/5/2.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "ViewController.h"
#import "JXView.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.bounds = CGRectMake(0, 0, self.view.bounds.size.width, 40);
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    button.center = self.view.center;
    [self.view addSubview:button];
    
    JXView * view = [[JXView alloc] init];
    view.backgroundColor = [UIColor blueColor];
    view.center = self.view.center;
    view.bounds = CGRectMake(0, 0, 300, 500);
    view.alpha = 0.5;
    view.button = button;
    [self.view addSubview:view];
}


- (void)btnClick:(UIButton *)sender {
    NSLog(@"%s",__func__);
}

@end
