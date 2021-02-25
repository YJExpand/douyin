//
//  AWMainController.m
//  AwemeDemo
//
//  Created by YJExpand on 2020/12/21.
//

#import "AWMainController.h"
#import "AWNavigationController.h"
#import "AWHomeViewController.h"
#import "AWFriendViewController.h"
#import "AWMessageViewController.h"
#import "AWMineViewController.h"
#import "AWPublishViewController.h"
#import "AWTabBar.h"

@interface AWMainController ()
@property (nonatomic,strong) AWTabBar *tabBarView;
@end

@implementation AWMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor backgroundColor];
    [self.tabBar setShadowImage:[[UIImage alloc] init]];
    [self.tabBar setBackgroundImage:[[UIImage alloc] init]];
    [self aw_setupUI];
}

#pragma mark UI
- (void)aw_setupUI
{
    //首页
    [self setupChildVc:[[AWHomeViewController alloc] init] title:@"首页"];
    //朋友
    [self setupChildVc:[[AWFriendViewController alloc] init] title:@"朋友"];
    
    [self setupChildVc:[[AWPublishViewController alloc] init] title:@"发布"];
    //消息
    [self setupChildVc:[[AWMessageViewController alloc] init] title:@"消息"];
    //我的
    [self setupChildVc:[[AWMineViewController alloc] init] title:@"我"];
    
    self.tabBarView = [[AWTabBar alloc] initWithFrame:self.tabBar.bounds items:@[@"首页",@"朋友",@"发布",@"消息",@"我"]];
    [self.tabBar addSubview:self.tabBarView];
}

#pragma mark: 初始化控制器
-(void)setupChildVc:(UIViewController *)vc title:(NSString *)title
{
    vc.tabBarItem.title = title;
    AWNavigationController *nav = [[AWNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    [self.tabBarView updateSelectWithIndex:[self.tabBar.items indexOfObject:item]];
}
@end
