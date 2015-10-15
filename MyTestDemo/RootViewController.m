//
//  RootViewController.m
//  MyTestDemo
//
//  Created by 邢 on 14-9-17.
//  Copyright (c) 2014年 ___My_Company___. All rights reserved.
//

#import "RootViewController.h"
#import "TestView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImageView.userInteractionEnabled = YES;
    bgImageView.image = [UIImage imageNamed:@"meinv.jpg"];
    
    TestView *view = [[TestView alloc] initWithFrame:self.view.frame];
    
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 280, 160, 100)];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"这是一个仿支付宝进入后台后，多任务缩略图模糊效果的demo，模糊程度可以自己调整";
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:16.0];
    [bgImageView addSubview:label];

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 400, 300, 45)];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"弹出框" forState:UIControlStateNormal];
    
    [bgImageView addSubview:button];
    
    [self.view addSubview:bgImageView];
//    [self.view addSubview:view];
}

- (void)buttonPressed
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"有弹出框时覆盖效果测试" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
