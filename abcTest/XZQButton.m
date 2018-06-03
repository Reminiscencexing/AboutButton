//
//  XZQButton.m
//  abcTest
//
//  Created by zengqiang xing on 2018/6/3.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//

#import "XZQButton.h"

@implementation XZQButton


-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    
    // 当前btn的大小
    CGRect btnBounds=self.bounds;
    // 扩大按钮的点击范围，改为负值
    btnBounds=CGRectInset(btnBounds, -10, -10);
    
    // 若点击的点在新的bounds里，就返回YES
    return CGRectContainsPoint(btnBounds, point);
    
}

@end
