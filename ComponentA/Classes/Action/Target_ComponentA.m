//
//  Target_ComponentA.m
//  ZSProject
//
//  Created by zhoushuai on 2021/5/15.
//  Copyright © 2021 zhoushuai. All rights reserved.
//

#import "Target_ComponentA.h"
#import "ComponentAVC.h"
#import "ComponentADetailVC.h"

@implementation Target_ComponentA

- (id)Action_nativeFetchComponentAVC:(NSDictionary *)params {
    UIViewController *vc = [[ComponentAVC alloc] init];
    vc.title = params[@"vcTitle"];
    return vc;
}

- (id)Action_nativeFetchComponentADetailVC:(NSDictionary *)params {
    UIViewController *vc = [[ComponentADetailVC alloc] init];
    vc.title = params[@"vcTitle"];
    return vc;
}

@end
