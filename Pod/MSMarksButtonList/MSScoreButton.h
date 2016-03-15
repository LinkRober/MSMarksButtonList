//
//  MSScoreButton.h
//  MishiOS
//
//  Created by 夏敏 on 10/3/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSButtonFactoryProtocol.h"

@interface MSScoreButton : UIButton <MSButtonFactoryProtocol>

- (void)setButtonHighLight;
- (void)setButtonNoram;

@end
