//
//  UIColor+FG.h
//  CY
//
//  Created by chfg on 16/4/11.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (FG)

/** 生成随机颜色 */
+(UIColor *)randomColor;

/**
 *  将16进制字符串转换成UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end
