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
    
    
     /**
     *  1. 原型图得同等大小 (同样的画布,确保拉伸点击不错位)
     *  2. 需要是.png 或.tiff 图片 (背景会透明的,最后判断的时候安排alpha值来确认是哪一张图片)
     *  3. 自定义控件和类别 (老外的)
     *        1) 响应链第一个图片, 转换点 (当前视图转图片)
     *        2) 判断点对应的图片是的颜色的alpha 
     *        3) 响应链 循环
     *  tip : 其他的控件,仿照对应的属性就行
     */
    
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


- (void)click:(UIButton *)btn
{
    NSLog(@"%ld",btn.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
