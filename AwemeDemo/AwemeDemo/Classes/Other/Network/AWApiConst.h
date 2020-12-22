//
//  AWApiConst.h
//  AwemeDemo
//
//  Created by YJExpand on 2020/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define API(n) [AWBaseUrl stringByAppendingString:n]

UIKIT_EXTERN NSString *const AWBaseUrl;

// 首页推荐
UIKIT_EXTERN NSString *const Api_HomeRemmendlist;

// 首页关注列表
UIKIT_EXTERN NSString *const Api_HomeRemmendFollowlist;

// 首页附近列表
UIKIT_EXTERN NSString *const Api_HomeRemmendNearbylist;

NS_ASSUME_NONNULL_END
