//
//  ViewController.m
//  changeAlertButtonAttribute
//
//  Created by 邹贤 on 16/6/8.
//  Copyright © 2016年 zouxian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    /** title */
    NSMutableAttributedString *alertTitleStr = [[NSMutableAttributedString alloc] initWithString:@"提示"];
    [alertTitleStr addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, 2)];
    [alertTitleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 2)];
    
    
    /** message */
    NSMutableAttributedString *alertMessageStr = [[NSMutableAttributedString alloc] initWithString:@"你确定要退出当前账号吗?"];
    [alertMessageStr addAttribute:NSForegroundColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(0, 12)];
    [alertMessageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16] range:NSMakeRange(0, 12)];
    
     UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"" message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    
    /** 通过KVC修改title和message */
    //修改title
    [alertVC setValue:alertTitleStr forKey:@"attributedTitle"];
    //修改message
    [alertVC setValue:alertMessageStr forKey:@"attributedMessage"];
    
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    /** 通过KVC改变按钮文字颜色 */
    [sureAction setValue:[UIColor redColor] forKey:@"titleTextColor"];
    [cancelAction setValue:[UIColor lightGrayColor] forKey:@"titleTextColor"];
    
    [alertVC addAction:sureAction];
    [alertVC addAction:cancelAction];
    
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
