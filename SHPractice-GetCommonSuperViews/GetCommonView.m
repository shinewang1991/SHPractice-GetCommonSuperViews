//
//  GetCommonView.m
//  SHPractice-GetCommonSuperViews
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "GetCommonView.h"

@implementation GetCommonView
+ (NSArray <UIView *> *)getCommonViews:(UIView *)viewA viewB:(UIView *)viewB{
    NSArray *viewsForA = [self getAllSuperViews:viewA];
    NSArray *viewsForB = [self getAllSuperViews:viewB];
    NSMutableArray *commonViews = [NSMutableArray array];
    NSUInteger count = viewsForA.count > viewsForB.count ? viewsForB.count: viewsForA.count;
    for(NSInteger i = 0; i < count; i++){
        UIView *viewForA = viewsForA[viewsForA.count - i - 1];
        UIView *viewForB = viewsForB[viewsForB.count - i - 1];
        if(viewForA == viewForB){
            [commonViews addObject:viewForA];
        }
        else{
            break;
        }
    }
    
    return commonViews;
    
}

+ (NSArray <UIView *> *)getAllSuperViews:(UIView *)subView{
    UIView *superView = subView.superview;
    NSMutableArray<UIView *> *views = [NSMutableArray array];
    while (superView != nil) {
        [views addObject:superView];
        superView = superView.superview;
    }
    
    return views;
}
@end
