//
//  ViewController.m
//  SHPractice-GetCommonSuperViews
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "ViewController.h"
#import "GetCommonView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewB;
@property (weak, nonatomic) IBOutlet UIView *ViewC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *commonViews = [GetCommonView getCommonViews:self.viewB viewB:self.ViewC];
    for(UIView *subView in commonViews){
        NSLog(@"subView----------%d",subView.tag);
    }
}


@end
