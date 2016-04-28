//
//  UIImage+FG.m
//
//  Created by chfg on 16/4/2.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import "UIImage+FG.h"

@implementation UIImage (FG)

+ (UIImage *)resizedImageWithName:(NSString *)name
{
    return [self resizedImageWithName:name left:0.5 top:0.5];
}

+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top
{
    UIImage *image = [self imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * left topCapHeight:image.size.height * top];
}


@end
