//
//  AWBaseViewController.m
//  AwemeDemo
//
//  Created by YJExpand on 2021/2/25.
//

#import "AWBaseViewController.h"

@interface AWBaseViewController ()

@end

@implementation AWBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    self.view.backgroundColor = [UIColor aw_randomColor];
    
}


@end
