//
//  GetCommonView.h
//  SHPractice-GetCommonSuperViews
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GetCommonView : NSObject
+ (NSArray <UIView *> *)getCommonViews:(UIView *)viewA viewB:(UIView *)viewB;
@end

NS_ASSUME_NONNULL_END
