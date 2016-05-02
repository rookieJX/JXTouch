//
//  JXView.m
//  JXTouch
//
//  Created by 王加祥 on 16/5/2.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "JXView.h"


@implementation JXView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    // 先将传递的事件的点的坐标系转换到button上
    CGPoint pt = [self convertPoint:point toView:self.button];
    
    // 判断点是不是在当前button上.如果是就将事件返回给当前button处理
    if ([self.button pointInside:pt withEvent:event]) {
        return self.button;
    } else {
        return [super hitTest:point withEvent:event];
    }
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s",__func__);
}
@end
