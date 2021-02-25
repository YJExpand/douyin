//
//  AWTabBar.h
//  AwemeDemo
//
//  Created by YJExpand on 2021/2/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWTabBar : UIView
- (instancetype)initWithFrame:(CGRect)frame items:(NSArray<NSString *> *)items;
@property (nonatomic,strong) NSMutableArray<UIButton *> *barbuttonItems;
- (void)updateSelectWithIndex:(NSInteger)index;
@end

NS_ASSUME_NONNULL_END
