//
//  ImageRightButton.m
//  Test
//
//  Created by 子瞻 on 16/10/18.
//  Copyright © 2016年 jamesfeng. All rights reserved.
//

#import "ImageRightButton.h"

@implementation ImageRightButton

- (void)setIsImageRight:(BOOL)isImageRight
{
    _isImageRight = isImageRight;
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

@end
