//
//  ViewController.m
//  FontAutoSize
//
//  Created by 1 on 16/11/21.
//  Copyright © 2016年 ming-zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

#pragma mark - 屏幕适配
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHieight [UIScreen mainScreen].bounds.size.height
#define f_CalcRealWidthByiPhone6(widthForiPhone6) widthForiPhone6/375.0f*ScreenWidth
#define f_CalcRealHeightByiPhone6(heightForiPhone6) heightForiPhone6/667.0f*ScreenHieight
#define HIGH_RESOLUTION4             ([UIScreen mainScreen].bounds.size.height ==480)
#define HIGH_RESOLUTION5             ([UIScreen mainScreen].bounds.size.height ==568)
#define HIGH_RESOLUTION6             ([UIScreen mainScreen].bounds.size.height ==667)
#define HIGH_RESOLUTION6Plus         ([UIScreen mainScreen].bounds.size.height ==736)

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLabel];
}

- (void)setLabel
{
    UIButton *btn_eva = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_eva.frame = CGRectMake(100, 200, f_CalcRealWidthByiPhone6(60), 30);
    [btn_eva setTitle:@"我的评价" forState:UIControlStateNormal];
    [btn_eva setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn_eva.layer.cornerRadius = 2.0;
    btn_eva.layer.masksToBounds = YES;
    btn_eva.titleLabel.font = [self setAutoFont];
    btn_eva.backgroundColor = [UIColor greenColor];
    btn_eva.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [self.view addSubview:btn_eva];
    CGFloat fontSize = btn_eva.titleLabel.font.pointSize;
    NSLog(@"字体大小--%f",fontSize);
//    lbl_name.font = [UIFont systemFontOfSize:fontSize*SizeScale];
}

- (UIFont *)setAutoFont
{
    if (HIGH_RESOLUTION4)
    {
        UIFont *font = [UIFont systemFontOfSize:12];
        return font;
    }
    else if (HIGH_RESOLUTION5)
    {
        UIFont *font = [UIFont systemFontOfSize:12];
        return font;
    }
    else if (HIGH_RESOLUTION6)
    {
        UIFont *font = [UIFont systemFontOfSize:14];
        return font;
    }
    //iPhone6P、iPhone6SP、iPhone7P
    else
    {
        UIFont *font = [UIFont systemFontOfSize:15];
        return font;
    }
}

@end
