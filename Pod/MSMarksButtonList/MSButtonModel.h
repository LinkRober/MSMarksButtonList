//
//  MSButtonModel.h
//  MishiOS
//
//  Created by 夏敏 on 10/4/15.
//  Copyright © 2015 ___MISHI___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSButtonModel : NSObject<NSCopying>


@property (nonatomic, strong,readonly) UIFont *titleFont;

@property (nonatomic, strong,readonly) UIColor *normalColor;
@property (nonatomic, strong,readonly) UIColor *selectedColor;

@property (nonatomic, strong,readonly) UIImage *normalBgImage;
@property (nonatomic, strong,readonly) UIImage *selectedBgImage;

@property (nonatomic, strong,readonly) NSString *normalName;
@property (nonatomic, strong,readonly) NSString *selectedName;

@property (nonatomic, strong,readonly) UIColor *normalEdgeColor;
@property (nonatomic, strong,readonly) UIColor *selectedEdgeColor;

@property (nonatomic, getter=isHighLight) BOOL highLight;//used in score style

-(instancetype)initWithButtonName:(NSString *)normalName highLight:(BOOL)highLight;

/**
 *
 *
 *  @param normalName
 *  @param selectedName
 *  @param normalColor
 *  @param selectedColor
 *  @param normalBgImage
 *  @param selectedBgImage
 *  @param titleFont
 *  @param hightLight
 *
 *  @return 
 */
-(instancetype)initWithButtonNormalName:(NSString *)normalName
                           selectedName:(NSString *)selectedName
                            normalColor:(UIColor *)normalColor
                          selectedColor:(UIColor *)selectedColor
                            normalBgImage:(UIImage *)normalBgImage
                          selectedBgImage:(UIImage *)selectedBgImage
                              titleFont:(UIFont *)titleFont
                             hightLight:(BOOL )hightLight
                        normalEdgeColor:(UIColor *)normalEdgeColor
                      selectedEdgeColor:(UIColor *)selectedEdgeColor;

@end
