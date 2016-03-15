//
//  MSMarksButtonList.h
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//
/**
 *  下单页面和评价 buttonlist控件 自适应个数
 */
#import <UIKit/UIKit.h>
#import "MSButtonCommon.h"
#import "MSButtonFactoryProtocol.h"

@class MSButtonConfigurationModel;
@class MSMarksButtonList;
@class MSMarksButton;
@class MSButtonModel;

@protocol MSMarksButtonListDelegate <NSObject>

@optional
//remark
- (void)markListButtonClick:(MSMarksButtonList *)buttonList buttonTitle:(NSString *)buttonTitle;
//comment
- (void)markListButtonClick:(MSMarksButtonList *)buttonList buttonModel:(MSButtonModel *)buttonModel;


@end

@interface MSMarksButtonList : UIView

@property (nonatomic, weak)  id<MSMarksButtonListDelegate> delegate;

-(instancetype)initWithDataSource:(NSArray *)buttonList
                       buttonType:(MSButtonType)buttonType
                    configuration:(MSButtonConfigurationModel *)configurationModel;

/**
 *  after requesting asyn datas ,setting up datas
 *
 *  @param dataArray
 */
- (void)setDatas:(NSArray *)dataArray;
/**
 *  get heght of entire list
 *
 *  @return
 */
-(CGFloat)getListHeight;
/**
 *  showing list with animation or not
 *
 *  @param animated
 */
- (void)showButtonListAnimated:(BOOL)animated;
/**
 *  hide list with animation or not
 *
 *  @param animated
 */
- (void)hideButtonListAnimated:(BOOL)animated;
/**
 *  clear current statuses of buttons
 */
- (void)cleanButtonListCurrentState;

@end


