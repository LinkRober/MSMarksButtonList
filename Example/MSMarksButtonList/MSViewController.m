//
//  MSViewController.m
//  MSMarksButtonList
//
//  Created by 夏敏 on 03/15/2016.
//  Copyright (c) 2016 夏敏. All rights reserved.
//

#import "MSViewController.h"
#import "MSMarksButtonList.h"
#import "MSButtonConfigurationModel.h"

@interface MSViewController ()<MSMarksButtonListDelegate>

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"MSMarksButtonList";
    
    
    MSButtonConfigurationModel *configuration = [[MSButtonConfigurationModel alloc] initWithEdgeMargin:12.0f
                                                                                             horMargin:10.0f
                                                                                             verMargin:10.0f
                                                                                          buttonHeight:32.0f
                                                                                         fromTopMargin:160];
    
    configuration.hide = NO;
    MSMarksButtonList *buttonList = [[MSMarksButtonList alloc] initWithDataSource:[NSArray array]
                                                                       buttonType:MSButtonTypeOrderScore
                                                                    configuration:configuration];
    [buttonList setDelegate:self];
    [self.view addSubview:buttonList];
    
    
    // when data call back successfully
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
    });
}




@end
