//
//  ComponentAVC.m
//  ZSProject
//
//  Created by zhoushuai on 2021/5/14.
//  Copyright © 2021 zhoushuai. All rights reserved.
//

#import "ComponentAVC.h"
#import "Masonry.h"
#import "ComponentADetailVC.h"

#import "RoutePublicHeader.h"

@interface ComponentAVC ()

@property (nonatomic, strong) UIButton *testButton;

@end


@implementation ComponentAVC


+ (void)load {
[MGJRouter registerURLPattern:ZSComponetAPrintInfo toHandler:^(NSDictionary *routerParameters) {
    NSDictionary *userInfo = routerParameters[MGJRouterParameterUserInfo];
    NSLog(@"打印信息：%@",userInfo[@"msg"]);
}];
    
    [MGJRouter registerURLPattern:ZSComponetAVC toObjectHandler:^id(NSDictionary *routerParameters) {
        ComponentAVC *aVC = [[ComponentAVC alloc] init];
        NSDictionary *userInfo = routerParameters[MGJRouterParameterUserInfo];
        aVC.title = userInfo[@"vcTitle"];
        return aVC;
    }];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configSubviews];
}


#pragma mark - Test

- (void)onTestBtnClick:(UIButton *)btn {
    UIViewController *aDetailVC = [[ComponentADetailVC alloc] init];
    [self.navigationController pushViewController:aDetailVC animated:true];
}


#pragma mark - private Methods

- (void)configSubviews {
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGSize buttonSize = CGSizeMake(200, 50);
    self.testButton = [self createButtonTitle:@"进入A详情页" size:buttonSize];
    [self.testButton addTarget:self action:@selector(onTestBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.testButton];
    [self.testButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(300);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(buttonSize);
    }];
}

- (UIButton *)createButtonTitle:(NSString *)title size:(CGSize)size{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
    button.frame = CGRectMake(0, 0, size.width, size.height);
    [button setTitle:title forState:UIControlStateNormal];
    button.layer.cornerRadius = size.height / 2.0;
    button.layer.masksToBounds = YES;
    button.titleLabel.textColor = [UIColor whiteColor];
    button.backgroundColor = UIColor.purpleColor;
    return button;
}

@end
