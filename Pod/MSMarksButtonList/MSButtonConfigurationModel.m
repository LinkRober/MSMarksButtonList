//
//  MSButtonConfigurationModel.m
//  MishiOS
//
//  Created by 夏敏 on 10/4/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSButtonConfigurationModel.h"

@implementation MSButtonConfigurationModel

-(instancetype)initWithEdgeMargin:(CGFloat)edgeMargin
                        horMargin:(CGFloat)horMargin
                        verMargin:(CGFloat)verMargin
                     buttonHeight:(CGFloat)buttonHeight
                    fromTopMargin:(CGFloat)fromTopMargin
                    numberInALine:(NSInteger)numberInaLine
{
    self = [super init];
    if (self) {
        _edgeMargin = edgeMargin;
        _horMargin = horMargin;
        _verMargin = verMargin;
        _buttonHeight = buttonHeight;
        _fromTopMargin = fromTopMargin;
        _numberInaLine = numberInaLine;
    }
    return self;
}


@end
