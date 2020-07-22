//
//  ViewController.m
//  FlutterDemo
//
//  Created by TTC on 2020/7/17
//
//  Copyright © 2020年 TTC. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/FlutterViewController.h>

@interface ViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:6.0 target:self selector:@selector(push) userInfo:nil repeats:YES];
}

- (void)push {
    NSLog(@"pushed");
    
    [self.navigationController pushViewController:[FlutterViewController new] animated:YES];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController popViewControllerAnimated:YES];
    });
}


@end
