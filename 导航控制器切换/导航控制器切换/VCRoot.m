//
//  VCRoot.m
//  导航控制器切换
//
//  Created by 张立远 on 2020/7/14.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航栏的透明度
    //默认透明度为YES，可透明的
    self.navigationController.navigationBar.translucent = NO;
    //调节导航栏风格颜色
    //默认白色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
}

-(void) pressNext{
    //创建一个新的视图控制器
    VCSecond* vcSecond = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:vcSecond animated:YES];
    

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
