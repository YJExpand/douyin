//
//  UIColor+Extension.m
//  AwemeDemo
//
//  Created by YJExpand on 2020/12/21.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)
+ (UIColor *)backgroundColor{
    return rgb(25, 26, 32, 1);
}
+ (UIColor*)aw_randomColor{

    NSInteger aRedValue =arc4random() %255;
    NSInteger aGreenValue =arc4random() %255;
    NSInteger aBlueValue =arc4random() %255;
    UIColor * randColor = [UIColor colorWithRed:aRedValue /255.0f green:aGreenValue /255.0f blue:aBlueValue /255.0f alpha:1.0f];
    return randColor;

}
@end
