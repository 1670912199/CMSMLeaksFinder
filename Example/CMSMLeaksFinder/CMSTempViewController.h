//
//  CMSTempViewController.h
//  CMSMLeaksFinder_Example
//
//  Created by Jacky on 2022/4/29.
//  Copyright © 2022 heyunqian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^didClickBlock)(id obj);
@interface CMSTempViewController : UIViewController

@property (nonatomic, copy) didClickBlock clickBlk;
@end

NS_ASSUME_NONNULL_END
