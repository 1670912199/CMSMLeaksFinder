//
//  CMSViewController.m
//  CMSMLeaksFinder
//
//  Created by heyunqian on 03/28/2022.
//  Copyright (c) 2022 heyunqian. All rights reserved.
//

#import "CMSViewController.h"
#import "CMSTempViewController.h"

@interface CMSViewController ()
/**  **/
@property (nonatomic, strong) CMSTempViewController *tempVc;

@end

@implementation CMSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _tempVc = [[CMSTempViewController alloc] init];
    _tempVc.clickBlk = ^(id  _Nonnull obj) {
        self.view.layer.borderColor = [UIColor redColor].CGColor;
        self.view.layer.borderWidth = 1;
    };
    [self presentViewController:_tempVc animated:YES completion:nil];
}

@end
