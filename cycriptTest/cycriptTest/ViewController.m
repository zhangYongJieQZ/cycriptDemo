//
//  ViewController.m
//  cycriptTest
//
//  Created by 张永杰 on 16/6/2.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
@interface ViewController ()
{
    UIImage *privateImage;
}
@property (nonatomic, strong)UIView   *testView;
@property (nonatomic, strong)UILabel  *showLabel;

@end

@implementation ViewController

- (void)publicTestCycript{
    _showLabel.text = @"publicTestCycript";
}

- (void)privateTestCycript{
    _showLabel.text = @"privateTestCycript";
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    _bacImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
//    _bacImageView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_bacImageView];
//    NSLog(@"CYListen = %d",CYListenServer());
    self.view.backgroundColor = [UIColor redColor];
    _showLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.height, 50)];
    _showLabel.text = @"这是测试cycript的demo";
    [self.view addSubview:_showLabel];
    
    _testView = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 100, 100)];
    _testView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_testView];
//    NSString *str = @"NSObjcet";
    Class y = (Class )objc_getClass("ViewController");
    NSLog(@"y = %@",y);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
