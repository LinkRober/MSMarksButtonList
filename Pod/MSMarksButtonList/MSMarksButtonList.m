//
//  MSMarksButtonList.m
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSMarksButtonList.h"
#import "MSMarksButton.h"
#import "MSScoreButton.h"
#import "MSMarksButtonHelper.h"
#import "MSButtonFactory.h"
#import "MSButtonConfigurationModel.h"
#import "MSButtonModel.h"


@interface MSMarksButtonList()
{
    CGFloat   buttonHeight;//height of button
    CGFloat   buttonWidth;//width of button
    CGFloat   kMSMarksButtonListEdgeMargin;//padding from two margin
    CGFloat   kMSMarksButtonListHorMargin;//horizontal padding between buttons
    CGFloat   kMSMarksButtonListVerMargin;//vertical padding between buttons
    CGFloat   kMSMarksButtonListFromTopMargin;//padding from top
    NSInteger buttonNumberOfaLine;//row
    NSInteger buttonNumberOfaRow;//column
    
    CGFloat   sumHeight;
    
    unsigned long numberInaLine;
}

@property (nonatomic, assign)  MSButtonType    buttonType;//button type
@property (nonatomic, strong)  NSArray        *dataSource;//titles
@property (nonatomic, strong)  NSMutableArray *buttonsArray;//button array
@property (nonatomic, strong)  MSButtonConfigurationModel *configuationModel;

@end

@implementation MSMarksButtonList

#pragma mark - View LifeCycle

-(instancetype)initWithDataSource:(NSArray *)buttonList
                       buttonType:(MSButtonType)buttonType
                    configuration:(MSButtonConfigurationModel *)configurationModel
{
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
        _buttonType = buttonType;
        _dataSource = [NSArray arrayWithArray:buttonList];
        _configuationModel = configurationModel;
        [self setUp];
    }
    return self;
}

#pragma mark - Publick

-(CGFloat)getListHeight {
    return sumHeight;
}

-(void)showButtonListAnimated:(BOOL)animated {
    [self setNeedsDisplay];
    if (animated) {
        [UIView animateWithDuration:.5 animations:^{
            CGRect rect = self.frame;
            rect.size.height = [self getListHeight];
            self.frame = rect;
        }];
    }
    else {
        CGRect rect = self.frame;
        rect.size.height = [self getListHeight];
        self.frame = rect;
    }
}

-(void)hideButtonListAnimated:(BOOL)animated {
    [self setNeedsDisplay];
    if (animated) {
        [UIView animateWithDuration:.5 animations:^{
            CGRect rect = self.frame;
            rect.size.height = 0;
            self.frame = rect;
        } completion:^(BOOL finished) {
            [self cleanButtonListCurrentState];
        }];
    }
    else {
        CGRect rect = self.frame;
        rect.size.height = 0;
        self.frame = rect;
        [self cleanButtonListCurrentState];
    }
    
}

- (void)cleanButtonListCurrentState {
    [self.buttonsArray enumerateObjectsUsingBlock:^(MSScoreButton *scoreButton, NSUInteger idx, BOOL * _Nonnull stop) {
        [scoreButton setButtonNoram];
    }];
}

#pragma mark - Private
- (void)setUp{
    if (_dataSource.count == 0) {
        return;
    }
    
    numberInaLine = self.configuationModel.numberInaLine;
    buttonNumberOfaLine = numberInaLine;
    buttonNumberOfaRow = [MSMarksButtonHelper getButtonListRow:_dataSource.count numberInLine:numberInaLine];
    
    [self configureMargin:self.configuationModel];
    
    buttonWidth = (kDeviceScreen_Width - kMSMarksButtonListEdgeMargin * (numberInaLine - 1) - kMSMarksButtonListHorMargin * (numberInaLine - 1)) / numberInaLine;
    
    [self.dataSource enumerateObjectsUsingBlock:^(MSButtonModel *buttonModel, NSUInteger idx, BOOL * _Nonnull stop) {
         UIButton *bt = (UIButton *)[MSButtonFactory createButton:self.buttonType model:buttonModel];
        [bt addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:bt];
        [self.buttonsArray addObject:bt];
    }];
    
    
    sumHeight = buttonNumberOfaRow*buttonHeight + (buttonNumberOfaRow - 1) * kMSMarksButtonListVerMargin;
    self.frame = CGRectMake(kMSMarksButtonListEdgeMargin, kMSMarksButtonListFromTopMargin, (kDeviceScreen_Width - kMSMarksButtonListEdgeMargin*(numberInaLine - 1)), sumHeight);
    
    if (self.configuationModel.hide) {
        [self hideButtonListAnimated:NO];
    }
    
}

-(void)setDatas:(NSArray *)dataArray {
    self.dataSource = nil;
    self.dataSource = [NSArray arrayWithArray:dataArray];
    [self setUp];
}

- (void)configureMargin:(MSButtonConfigurationModel *)configurationModel {
    
    kMSMarksButtonListEdgeMargin    = configurationModel.edgeMargin;
    kMSMarksButtonListHorMargin     = configurationModel.horMargin;
    kMSMarksButtonListVerMargin     = configurationModel.verMargin;
    kMSMarksButtonListFromTopMargin = configurationModel.fromTopMargin;
    buttonHeight                    = configurationModel.buttonHeight;
}

#pragma mark - Super
-(void)layoutSubviews {
    
    [self.buttonsArray enumerateObjectsUsingBlock:^(UIButton *button, NSUInteger idx, BOOL * _Nonnull stop) {
        //current i
        NSInteger current_i = [MSMarksButtonHelper currentXWith:idx numberInLine:numberInaLine];
        //current j
        NSInteger current_j = [MSMarksButtonHelper currentYWith:idx numberInLine:numberInaLine];
        //
        button.frame = CGRectMake(current_i*(buttonWidth + kMSMarksButtonListHorMargin), current_j*(buttonHeight + kMSMarksButtonListVerMargin), buttonWidth, buttonHeight);
    }];
    
    [super layoutSubviews];
}

#pragma mark - Custom Accessor
-(NSMutableArray *)buttonsArray {
    if (nil == _buttonsArray) {
        _buttonsArray = [NSMutableArray array];
    }
    return _buttonsArray;
}

#pragma mark - Action 

- (void)buttonAction:(id<MSButtonFactoryProtocol>)button {
    
    if ([button isMemberOfClass:[MSScoreButton class]]) {
        
        if (self.delegate && [self.delegate respondsToSelector:@selector(markListButtonClick:buttonModel:)]) {
            [self.delegate markListButtonClick:self buttonModel:button.buttonModel];
        }
        [button buttonStateChange];

        return;
    }
    
    if ([button isMemberOfClass:[MSMarksButton class]]) {
        //
        if (self.delegate && [self.delegate respondsToSelector:@selector(markListButtonClick:buttonTitle:)]) {
            [self.delegate markListButtonClick:self buttonTitle:button.buttonModel.normalName];
        }
    }
    
}

@end
