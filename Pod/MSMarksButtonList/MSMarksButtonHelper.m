//
//  MSMarksButtonHelper.m
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSMarksButtonHelper.h"

@implementation MSMarksButtonHelper

+(NSInteger)currentXWith:(NSInteger)index{
    return index % 3;
}

+(NSInteger)currentYWith:(NSInteger)index{
    return floor(index / 3);
}

+(NSInteger)getButtonListRow:(NSInteger)sum {
    if (sum%3 == 0) {
        return sum/3;
    }else {
       return fabs((double)sum/3) + 1;
    }
}

@end
