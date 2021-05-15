//
//  ComponentAProtocolImplete.m
//  ZSProject
//
//  Created by zhoushuai on 2021/5/14.
//  Copyright © 2021 zhoushuai. All rights reserved.
//

#import "ComponentAProtocolImp.h"
#import "RouteProtocolManager.h"
#import "ComponentAVC.h"

@implementation ComponentAProtocolImp

+ (void)load {
    [RouteProtocolManager registerClass:[ComponentAProtocolImp class]
                     forProtocol:NSProtocolFromString(@"ComponentAProtocol")];

}

+ (UIViewController *)fetchComponentAVCWithTitle:(NSString *)title {
    ComponentAVC *vc = [[ComponentAVC alloc] init];
    vc.title =  (title == nil) ? @"CopmponentA-VC" : title;
    return vc;
}

@end
