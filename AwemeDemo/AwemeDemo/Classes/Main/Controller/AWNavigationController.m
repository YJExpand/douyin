//
//  AWNavigationController.m
//  AwemeDemo
//
//  Created by YJExpand on 2021/2/25.
//

#import "AWNavigationController.h"

@interface AWNavigationController ()

@end

@implementation AWNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0 ){
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

-(void)BackClick{
    [self popViewControllerAnimated:true];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
//    NSString *currControll = [NSString stringWithFormat:@"%@",[self.childViewControllers.lastObject class]];
//    
//    if ([currControll isEqualToString:@"YJLoginCircleEditNameVC"] ||
//        [currControll isEqualToString:@"YJOrderPayResultVC"] ||
//        [currControll isEqualToString:@"YJLoginJionCircleVC"] ||
//        [currControll isEqualToString:@"YJOrderCashierVC"]) {
//        return NO;
//    }
    
    // 判断下当前控制器是不是根控制器
    if (self.viewControllers.count>1) {
        return YES;
    }else{
        return NO;//手势无效，无法转场，自然不会出现转场错乱的问题。
    }
    
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // 判断下当前控制器是不是根控制器
    if (navigationController.viewControllers.count>1) {
        self.interactivePopGestureRecognizer.enabled = YES;
    }else{
        self.interactivePopGestureRecognizer.enabled = NO;//手势无效，无法转场，自然不会出现转场错乱的问题。
    }
}

@end
