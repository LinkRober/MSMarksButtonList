//
//  MSMarksButton.m
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSMarksButton.h"
#import "MSButtonModel.h"

@interface MSMarksButton()

@end

@implementation MSMarksButton
@synthesize buttonModel = _buttonModel;

#pragma mark - Super

#pragma mark - Public
-(void)setStateWithModel:(MSButtonModel *)model {
    
    //default settings
    self.titleLabel.font = model.titleFont;
    [self setTitle:model.normalName forState:UIControlStateNormal];
    [self setTitleColor:model.normalColor forState:UIControlStateNormal];
    [self setBackgroundImage:model.normalBgImage forState:UIControlStateNormal];
    [self setTitleColor:model.selectedColor forState:UIControlStateHighlighted];
    [self setBackgroundImage:model.selectedBgImage forState:UIControlStateHighlighted];

    self.buttonModel = [model copy];
//TODO: haven't set frame
    [self setButtonStyle];
}

#pragma mark - Private

- (void)setButtonStyle {
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = .5;
    self.layer.cornerRadius = 14;
    self.layer.borderColor = self.buttonModel.normalEdgeColor.CGColor;
}

@end
