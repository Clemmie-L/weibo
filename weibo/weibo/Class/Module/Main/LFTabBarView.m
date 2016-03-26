//
//  LFTabBarView.m
//  weibo
//
//  Created by 刘健 on 16/3/26.
//  Copyright © 2016年 Clemmie. All rights reserved.
//

#import "LFTabBarView.h"


@interface LFTabBarView ()


@property(nonatomic,weak) UIButton *midButton;

@end

@implementation LFTabBarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        self.backgroundColor = [UIColor redColor];
        
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        [self addSubview:btn];
        self.midButton = btn;
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
}


@end
