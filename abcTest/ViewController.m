//
//  ViewController.m
//  abcTest
//
//  Created by zengqiang xing on 2018/6/3.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//  新建一个类继承自UIButton，重写她的pointInside方法

#import "ViewController.h"
#import "XZQButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn1=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    btn1.backgroundColor=[UIColor redColor];
    [btn1 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    
    NSLog(@"原按钮%f---------%f",btn1.frame.size.width,btn1.frame.size.height);
    
    XZQButton *btn2=[[XZQButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    btn2.backgroundColor=[UIColor greenColor];
    [btn2 addTarget:self action:@selector(btn2Click:) forControlEvents:UIControlEventTouchUpInside];
    NSLog(@"现在按钮%f---------%f",btn2.frame.size.width,btn2.frame.size.height);
    [self.view addSubview:btn2];
}
-(void)btn1Click:(UIButton *)btn
{
    NSString *msg=@"点击红色";
    UIAlertController *alertC=[UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
    [alertC addAction:action];
    [self presentViewController:alertC animated:YES completion:nil];
}

-(void)btn2Click:(XZQButton *)btn
{
    NSString *msg=@"点击绿色";
    UIAlertController *alertC=[UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
    [alertC addAction:action];
    [self presentViewController:alertC animated:YES completion:nil];
}


@end
