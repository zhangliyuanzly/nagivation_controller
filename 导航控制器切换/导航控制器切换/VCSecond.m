//
//  VCSecond.m
//  导航控制器切换
//
//  Created by 张立远 on 2020/7/14.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self. title = @"视图二";
    
    UIBarButtonItem* btnNext = [[UIBarButtonItem alloc] initWithTitle:@"第三级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = btnNext;
}

-(void) pressNext{
    
    VCThird* vc = [[VCThird alloc] init];
        //推出第三个视图控制器
    [self.navigationController pushViewController:vc animated:YES];
    
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
