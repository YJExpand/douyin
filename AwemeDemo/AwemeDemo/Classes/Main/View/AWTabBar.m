//
//  AWTabBar.m
//  AwemeDemo
//
//  Created by YJExpand on 2021/2/25.
//

#import "AWTabBar.h"

@interface AWTabBar()
@property (nonatomic,strong) UIView *selectLineView;
@end
@implementation AWTabBar

- (instancetype)initWithFrame:(CGRect)frame items:(NSArray<NSString *> *)items
{
    self = [super initWithFrame:frame];
    if (self) {
        [self aw_setupUIWithItems:items];
        UIView *lineView = [UIView new];
        lineView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.5];
        [self addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.top.trailing.mas_equalTo(0);
            make.height.mas_equalTo(0.3);
        }];
        
        [self addSubview:self.selectLineView];
        [self.selectLineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.barbuttonItems.firstObject);
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(3);
            if (@available(iOS 11.0, *)) {
                make.bottom.mas_equalTo(self.mas_safeAreaLayoutGuideBottom);
            } else {
                make.bottom.mas_equalTo(0);
            }
        }];
    }
    return self;
}

- (void)aw_setupUIWithItems:(NSArray<NSString *>*)items{
    CGFloat width = kScreenW / items.count;
    [items enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        if (idx == 2) {
            [btn setImage:[UIImage imageNamed:@"btn_home_add_hollow_Normal"] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:@"btn_home_add_hollow_Normal"] forState:UIControlStateHighlighted];
        }else{
            [btn setTitle:obj forState:UIControlStateNormal];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
            [btn setTitleColor:[UIColor colorWithWhite:1 alpha:0.7] forState:UIControlStateNormal];
        }
//        [btn addTarget:self action:@selector(barButtonClick:) forControlEvents:UIControlEventTouchUpInside];
//        btn.enabled = NO;
        btn.tag = idx;
        [self addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            if (@available(iOS 11.0, *)) {
                make.bottom.mas_equalTo(self.mas_safeAreaLayoutGuideBottom);
            } else {
                make.bottom.mas_equalTo(0);
            }
            make.top.mas_offset(0);
            make.width.mas_equalTo(width);
            make.leading.mas_equalTo(width * idx);
           
        }];
        [self.barbuttonItems addObject:btn];
    }];
    self.barbuttonItems.firstObject.selected = YES;
}

- (void)barButtonClick:(UIButton *)btn{
    
}

- (void)updateSelectWithIndex:(NSInteger)index{
    for (UIButton *btn in self.barbuttonItems) {
        btn.selected = NO;
    }
    if (index == 2) {
        self.selectLineView.hidden = YES;
        return;
    }
    self.selectLineView.hidden = NO;
    self.barbuttonItems[index].selected = YES;
    [self.selectLineView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.barbuttonItems[index]);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(3);
        if (@available(iOS 11.0, *)) {
            make.bottom.mas_equalTo(self.mas_safeAreaLayoutGuideBottom);
        } else {
            make.bottom.mas_equalTo(0);
        }
    }];
}

#pragma mark- getting
- (NSMutableArray<UIButton *> *)barbuttonItems{
    if (!_barbuttonItems) {
        _barbuttonItems = [NSMutableArray array];
    }
    return _barbuttonItems;
}
- (UIView *)selectLineView{
    if (!_selectLineView) {
        _selectLineView = [[UIView alloc] init];
        _selectLineView.backgroundColor = [UIColor whiteColor];
    }
    return _selectLineView;
}
@end
