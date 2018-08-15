//
//  ViewController.m
//  WEBP
//
//  Created by YZ on 2018/6/4.
//  Copyright © 2018年 TZ. All rights reserved.
//
#import "UIImage+WebP.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //模拟器没效果，直接上真机才行
    self.view.backgroundColor=[UIColor whiteColor];
    UIImageView* webp=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    NSString* str=[[NSBundle mainBundle] pathForResource:@"a.webp" ofType:nil];
    webp.image=[UIImage imageWithWebP:str];
    webp.center=self.view.center;
    [self.view addSubview:webp];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
