//
//  MSButtonModel.m
//  MishiOS
//
//  Created by 夏敏 on 10/4/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSButtonModel.h"

@implementation MSButtonModel


-(instancetype)initWithButtonName:(NSString *)normalName highLight:(BOOL)highLight {
    self = [super init];
    if (self) {
        _normalName = normalName;
        _highLight = highLight;
    }
    return self;
}


-(instancetype)initWithButtonNormalName:(NSString *)normalName
                           selectedName:(NSString *)selectedName
                            normalColor:(UIColor *)normalColor
                          selectedColor:(UIColor *)selectedColor
                            normalBgImage:(UIImage *)normalBgImage
                          selectedBgImage:(UIImage *)selectedBgImage
                              titleFont:(UIFont *)titleFont
                             hightLight:(BOOL )hightLight
                        normalEdgeColor:(UIColor *)normalEdgeColor
                      selectedEdgeColor:(UIColor *)selectedEdgeColor
{
    self = [super init];
    if (self) {
        _normalName = normalName;
        _selectedName = selectedName;
        _normalColor = normalColor;
        _selectedColor = selectedColor;
        _normalBgImage = normalBgImage;
        _selectedBgImage = selectedBgImage;
        _titleFont = titleFont;
        _highLight = hightLight;
        _normalEdgeColor = normalEdgeColor;
        _selectedEdgeColor = selectedEdgeColor;
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone {
    MSButtonModel *buttonModel = [[[self class] allocWithZone:zone] init];
    buttonModel ->_normalName= [_normalName copy];
    buttonModel ->_selectedName = [_normalName copy];
    buttonModel ->_normalColor = [_normalColor copy];
    buttonModel ->_selectedColor = [_selectedColor copy];
    buttonModel ->_normalBgImage = [[UIImage allocWithZone:zone] initWithCGImage:_normalBgImage.CGImage];
    buttonModel ->_selectedBgImage = [[UIImage allocWithZone:zone] initWithCGImage:_selectedBgImage.CGImage];
    buttonModel ->_normalEdgeColor = [_normalEdgeColor copy];
    buttonModel ->_selectedEdgeColor = [_selectedEdgeColor copy];
    buttonModel ->_titleFont = [_titleFont copy];
    buttonModel ->_highLight = _highLight;
    return buttonModel;
}

@end
