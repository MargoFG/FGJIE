//
//  UIImage+FG.h
//  聊天室(socket)
//
//  Created by chfg on 16/4/2.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FG)

/**
 *  返回一张自由拉伸的图片
 */
+ (UIImage *)resizedImageWithName:(NSString *)name;
+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;



@end
