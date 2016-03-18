//
//  MSMarksButtonHelper.m
//  MishiOS
//
//  Created by 夏敏 on 10/2/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import "MSMarksButtonHelper.h"

@implementation MSMarksButtonHelper

+(NSInteger)currentXWith:(NSInteger)index numberInLine:(NSInteger)number{
    return index % number;
}

+(NSInteger)currentYWith:(NSInteger)index numberInLine:(NSInteger)number{
    return floor(index / number);
}

+(NSInteger)getButtonListRow:(NSInteger)sum numberInLine:(NSInteger)number{
    if (sum % number == 0) {
        return sum/number;
    }else {
       return fabs((double)sum/number) + 1;
    }
}

@end
