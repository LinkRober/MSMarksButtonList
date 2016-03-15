//
//  MSButtonFactory.h
//  MishiOS
//
//  Created by 夏敏 on 10/3/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSButtonFactoryProtocol.h"
#import "MSButtonCommon.h"
@class MSButtonModel;
@interface MSButtonFactory : NSObject

+ (id<MSButtonFactoryProtocol>)createButton:(MSButtonType)buttonType model:(MSButtonModel *)model;

@end
