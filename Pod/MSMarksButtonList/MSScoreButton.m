//
//  MSScoreButton.m
//  MishiOS
//
//  Created by 夏敏 on 10/3/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSScoreButton.h"

@implementation MSScoreButton
@synthesize buttonModel = _buttonModel;

#pragma mark - protocol

-(void)setStateWithModel:(MSButtonModel *)model {
    self.buttonModel = [model copy];
    [self setButtonStyle];
    [self buttonStateChange];
}

-(void)buttonStateChange {
    self.buttonModel.highLight ? [self setButtonHighLight] : [self setButtonNoram];
}

#pragma mark - Private

-(void)setButtonHighLight {
    self.buttonModel.highLight = NO;
    [self setHighLightEdge];
    [self setTitle:self.buttonModel.normalName forState:UIControlStateNormal];
    [self setTitleColor:self.buttonModel.selectedColor forState:UIControlStateNormal];
    [self setBackgroundImage:self.buttonModel.selectedBgImage forState:UIControlStateNormal];
}

-(void)setButtonNoram {
    self.buttonModel.highLight = YES;
    [self setNormalEdge];
    [self setTitle:self.buttonModel.normalName forState:UIControlStateNormal];
    [self setTitleColor:self.buttonModel.normalColor forState:UIControlStateNormal];
    [self setBackgroundImage:self.buttonModel.normalBgImage forState:UIControlStateNormal];
}

- (void)setButtonStyle{
    self.titleLabel.font = self.buttonModel.titleFont;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 16;
}
- (void)setHighLightEdge{
    self.layer.borderWidth = 0;
    self.layer.borderColor = self.buttonModel.selectedEdgeColor.CGColor;
}

- (void)setNormalEdge {
    self.layer.borderWidth = .5;
    self.layer.borderColor = self.buttonModel.normalEdgeColor.CGColor;
}

@end
