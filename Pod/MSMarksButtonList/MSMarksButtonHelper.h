//
//  MSMarksButtonHelper.h
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDeviceScreen_Width [[UIScreen mainScreen] bounds].size.width

@interface MSMarksButtonHelper : NSObject

+ (NSInteger)currentXWith:(NSInteger)index numberInLine:(NSInteger )number;

+ (NSInteger)currentYWith:(NSInteger)index numberInLine:(NSInteger )number;

+ (NSInteger)getButtonListRow:(NSInteger)sum numberInLine:(NSInteger )number;

@end
