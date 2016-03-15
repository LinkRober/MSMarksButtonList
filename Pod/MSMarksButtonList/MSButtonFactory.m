//
//  MSButtonFactory.m
//  MishiOS
//
//  Created by 夏敏 on 10/3/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSButtonFactory.h"
#import "MSMarksButton.h"
#import "MSScoreButton.h"

@implementation MSButtonFactory

+(id<MSButtonFactoryProtocol>)createButton:(MSButtonType)buttonType model:(MSButtonModel *)model {
    switch (buttonType) {
        case MSButtonTypeMarks:
            return  [MSButtonFactory configButton:[MSMarksButton buttonWithType:UIButtonTypeCustom] model:model];
            break;
        case MSButtonTypeOrderScore:
            return  [MSButtonFactory configButton:[MSScoreButton buttonWithType:UIButtonTypeCustom] model:model];
            break;
    }
}

+(id<MSButtonFactoryProtocol>)configButton:(id<MSButtonFactoryProtocol>)button model:(MSButtonModel *)model {
    [button setStateWithModel:model];
    return button;
}

@end
