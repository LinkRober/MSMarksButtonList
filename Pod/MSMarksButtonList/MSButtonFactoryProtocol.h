//
//  MSButtonFactoryProtocol.h
//  MishiOS
//
//  Created by 夏敏 on 10/3/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MSButtonModel.h"

@protocol MSButtonFactoryProtocol <NSObject>

@property (nonatomic, strong) MSButtonModel *buttonModel;

@required
- (void)setStateWithModel:(MSButtonModel *)model;

@optional
- (void)buttonStateChange;

@end
