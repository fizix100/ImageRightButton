//
//  ImageRightButton.m
//  Test
//
//  Created by 子瞻 on 16/10/18.
//  Copyright © 2016年 jamesfeng. All rights reserved.
//

#import "ImageRightButton.h"

@implementation ImageRightButton

- (CGRect)titleRectForContentRect:(CGRect)contentRect;
{
    CGRect titleRect = [super titleRectForContentRect:contentRect];
    CGRect imageRect = [super imageRectForContentRect:contentRect];
    
    if (_isImageRight) {
        if ((self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) || (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter)) {
            titleRect = CGRectMake(imageRect.origin.x,
                                   titleRect.origin.y,
                                   CGRectGetWidth(titleRect),
                                   CGRectGetHeight(titleRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
                titleRect = CGRectMake(contentRect.size.width - titleRect.size.width - imageRect.size.width - self.titleEdgeInsets.right - self.imageEdgeInsets.right,
                                       titleRect.origin.y,
                                       CGRectGetWidth(titleRect),
                                       CGRectGetHeight(titleRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentFill) {
                titleRect = CGRectMake(imageRect.origin.x,
                                       titleRect.origin.y,
                                       CGRectGetWidth(titleRect),
                                       CGRectGetHeight(titleRect));
        }
        
        return titleRect;
    }
    else {
        if ((self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) || (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter)) {
            titleRect = CGRectMake(titleRect.origin.x + self.imageEdgeInsets.left,
                                   titleRect.origin.y,
                                   CGRectGetWidth(titleRect),
                                   CGRectGetHeight(titleRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
            titleRect = CGRectMake(contentRect.size.width - titleRect.size.width - self.titleEdgeInsets.right,
                                   titleRect.origin.y,
                                   CGRectGetWidth(titleRect),
                                   CGRectGetHeight(titleRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentFill) {
            titleRect = CGRectMake(CGRectGetMaxX(imageRect),
                                   titleRect.origin.y,
                                   CGRectGetWidth(titleRect),
                                   CGRectGetHeight(titleRect));
        }
        
        return titleRect;
    }
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect;
{
    CGRect titleRect = [super titleRectForContentRect:contentRect];
    CGRect imageRect = [super imageRectForContentRect:contentRect];
    
    if (_isImageRight) {
        if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft || (self.contentHorizontalAlignment ==UIControlContentHorizontalAlignmentCenter)) {
                imageRect = CGRectMake(imageRect.origin.x + titleRect.size.width + self.titleEdgeInsets.left,
                                       imageRect.origin.y,
                                       CGRectGetWidth(imageRect),
                                       CGRectGetHeight(imageRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
                imageRect = CGRectMake(contentRect.size.width - imageRect.size.width - self.imageEdgeInsets.right,
                                       imageRect.origin.y,
                                       CGRectGetWidth(imageRect),
                                       CGRectGetHeight(imageRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentFill) {
                imageRect = CGRectMake(imageRect.origin.x + titleRect.size.width,
                                       imageRect.origin.y,
                                       CGRectGetWidth(imageRect),
                                       CGRectGetHeight(imageRect));
        }
        
        return imageRect;
    }
    else {
        if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft || (self.contentHorizontalAlignment ==UIControlContentHorizontalAlignmentCenter)) {
            imageRect = CGRectMake(imageRect.origin.x,
                                   imageRect.origin.y,
                                   CGRectGetWidth(imageRect),
                                   CGRectGetHeight(imageRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
            imageRect = CGRectMake(contentRect.size.width - titleRect.size.width - imageRect.size.width - self.titleEdgeInsets.right - self.imageEdgeInsets.right,
                                   imageRect.origin.y,
                                   CGRectGetWidth(imageRect),
                                   CGRectGetHeight(imageRect));
        }
        else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentFill) {
            imageRect = CGRectMake(imageRect.origin.x,
                                   imageRect.origin.y,
                                   CGRectGetWidth(imageRect),
                                   CGRectGetHeight(imageRect));
        }
        
        return imageRect;
    }
} 

@end
