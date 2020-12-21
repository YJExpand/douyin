//
//  AWColorMacros.h
//  AwemeDemo
//
//  Created by YJExpand on 2020/12/21.
//

#ifndef AWColorMacros_h
#define AWColorMacros_h

/// 根据十六进制获取颜色
#define YJColorHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

/// 根据十六进制获取颜色  a:透明度
#define YJColorHexAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

/// rgb  a:透明度
#define rgb(r,g,b,a) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:a]

#endif /* AWColorMacros_h */
