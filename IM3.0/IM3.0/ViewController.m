//
//  ViewController.m
//  IM3.0
//
//  Created by 刘宇航 on 16/6/21.
//  Copyright © 2016年 刘宇航. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"环信3.0";
}
- (IBAction)chat:(id)sender {
    
    ChatViewController *chat = [[ChatViewController alloc]initWithConversationChatter:@"MDParents" conversationType:EMConversationTypeChat];
    [self.navigationController pushViewController:chat animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
