//
//  UIButton+ImageRight.m
//  Example
//
//  Created by 子瞻 on 16/10/21.
//  Copyright © 2016年 Feng. All rights reserved.
//

#import "UIButton+ImageRight.h"
#import <objc/runtime.h>

static char kIsImageRightProperty;

@implementation UIButton (ImageRight)

- (void)setIsImageRight:(BOOL)isImageRight
{
    objc_setAssociatedObject(self, &kIsImageRightProperty, @(isImageRight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if (isImageRight) {
        self.transform = CGAffineTransformMakeScale(-1.0, 1.0);
        self.imageView.transform = CGAffineTransformMakeScale(-1.0, 1.0);
        self.titleLabel.transform = CGAffineTransformMakeScale(-1.0, 1.0);
    }
    else {
        self.transform = CGAffineTransformMakeScale(1, 1);
        self.imageView.transform = CGAffineTransformMakeScale(1, 1);
        self.titleLabel.transform = CGAffineTransformMakeScale(1, 1);
    }
}


- (BOOL)isImageRight
{
    return [objc_getAssociatedObject(self, &kIsImageRightProperty)boolValue];
}

@end
