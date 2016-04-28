//
//  UIButton+FG.m
//
//  Created by chfg on 16/4/2.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import "UIButton+FG.h"
#import "UIImage+FG.h"

@implementation UIButton (FG)

-(void)setN_BG:(NSString *)nbg H_BG:(NSString *)hbg{
    [self setBackgroundImage:[UIImage imageNamed:nbg] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:hbg] forState:UIControlStateHighlighted];
}


-(void)setResizeN_BG:(NSString *)nbg H_BG:(NSString *)hbg{
    [self setBackgroundImage:[UIImage resizedImageWithName:nbg] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage resizedImageWithName:hbg] forState:UIControlStateHighlighted];
}

@end
