//
//  CMSTempViewController.m
//  CMSMLeaksFinder_Example
//
//  Created by Jacky on 2022/4/29.
//  Copyright © 2022 heyunqian. All rights reserved.
//

#import "CMSTempViewController.h"


@interface CMSTempViewController ()
@property (nonatomic, strong) UIView *testView;
@end

@implementation CMSTempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _testView = [[UIView alloc] init];
    [self.view addSubview:_testView];
    _testView.frame = CGRectMake(100, 100, 100, 50);
    _testView.layer.borderColor = [UIColor redColor].CGColor;
    _testView.layer.borderWidth = 1;
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:5 target:self selector:@selector(startAnimation) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    
}
- (void)startAnimation {
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
