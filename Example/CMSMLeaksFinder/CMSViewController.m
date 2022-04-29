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

@end

@implementation CMSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CMSTempViewController *tempVc = [[CMSTempViewController alloc] init];
    [self presentViewController:tempVc animated:YES completion:nil];
}

@end
