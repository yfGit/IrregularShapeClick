//
//  ViewController.m
//  不规则点击
//
//  Created by Wolf on 16/2/15.
//  Copyright © 2016年 许毓方. All rights reserved.
//

#import "ViewController.h"
#import "OBShapedButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *nameArr = [NSMutableArray array];
    
    for (int i = 1; i <= 33; i++) {
        NSString *str = [NSString stringWithFormat:@"%d",i];
        [nameArr addObject:str];
        
        OBShapedButton *btn = [[OBShapedButton alloc] initWithFrame:CGRectMake(20, 60, 300, 300)];
        [self.view addSubview:btn];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [btn setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        btn.tag = 10+i;
        
        
    }
    
    
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch * touch = [touches anyObject];
//    CGPoint currentLocation = [touch locationInView:self.view];
//    if(touches.count == 1) {
//        UIButton *btn = (UIButton *)[self.view viewWithTag:11];
//        
//        [btn hitTest:currentLocation withEvent:event];
//        
//    }
//}

- (void)click:(UIButton *)btn
{
    NSLog(@"%ld",btn.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
