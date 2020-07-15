//
//  VCRoot.m
//  导航控制器基础
//
//  Created by 张立远 on 2020/7/14.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    //设置导航栏的标题文字
    self.title = @"根视图";
    
    //创建一个导航栏左侧的按钮
    //根据title文字来创建按钮
    //P1:按钮上的文字
    //P2:按钮的风格
    //P3:事件拥有者
    //P4:按钮事件
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    
    //将导航元素项的左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
}



-(void) pressLeft{
    NSLog(@"左侧按钮被按下！");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
