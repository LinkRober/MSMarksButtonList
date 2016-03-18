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
                                                                                         fromTopMargin:160
                                                                                         numberInALine:4];
    
    configuration.hide = NO;
    MSMarksButtonList *buttonList = [[MSMarksButtonList alloc] initWithDataSource:[NSArray array]
                                                                       buttonType:MSButtonTypeOrderScore
                                                                    configuration:configuration];
    [buttonList setDelegate:self];
    [self.view addSubview:buttonList];
    
    //Mock data source
    NSMutableArray *dataSource = [NSMutableArray array];
    for (int i = 0; i < 12; i ++) {
        if (i % 2 == 0) {
            MSButtonModel *model = [[MSButtonModel alloc] initWithButtonNormalName:@"狠辣"
                                                                      selectedName:@"狠辣"
                                                                       normalColor:[UIColor redColor]
                                                                     selectedColor:[UIColor blueColor]
                                                                     normalBgImage:nil
                                                                   selectedBgImage:nil
                                                                         titleFont:[UIFont systemFontOfSize:12.0f]
                                                                        hightLight:NO
                                                                   normalEdgeColor:[UIColor redColor]
                                                                 selectedEdgeColor:[UIColor blueColor]
                                    ];
            [dataSource addObject:model];
        }
        else {
            MSButtonModel *model = [[MSButtonModel alloc] initWithButtonNormalName:@"甜的"
                                                                      selectedName:@"甜的"
                                                                       normalColor:[UIColor redColor]
                                                                     selectedColor:[UIColor blueColor]
                                                                     normalBgImage:nil
                                                                   selectedBgImage:nil
                                                                         titleFont:[UIFont systemFontOfSize:12.0f]
                                                                        hightLight:YES
                                                                   normalEdgeColor:[UIColor redColor]
                                                                 selectedEdgeColor:[UIColor blueColor]
                                    ];
            [dataSource addObject:model];
        }
    }
    // when data call back successfully
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [buttonList setDatas:dataSource];
    });
}

#pragma mark - MSMarksButtonListDelegate

-(void)markListButtonClick:(MSMarksButtonList *)buttonList buttonModel:(MSButtonModel *)buttonModel {}
-(void)markListButtonClick:(MSMarksButtonList *)buttonList buttonTitle:(NSString *)buttonTitle{}

@end
