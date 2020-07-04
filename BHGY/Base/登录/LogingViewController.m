//
//  LogingViewController.m
//  BHGY
//
//  Created by 李立 on 2020/7/4.
//  Copyright © 2020 liuxiang. All rights reserved.
//

#import "LogingViewController.h"

@interface LogingViewController ()

@end

@implementation LogingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //log图标
    UIImageView *logimageview = [[UIImageView alloc]initWithFrame:CGRectMake((kScreenWidth-90)/2, 87.5, 90, 90)];
    logimageview.image = [UIImage imageNamed:@"log图标"];
    [self.view addSubview:logimageview];
    
    //app名称
    UILabel *appnamelabel = [[UILabel alloc] init];
    appnamelabel.frame = CGRectMake(0,logimageview.bottom+22.5,kScreenWidth,28);
    appnamelabel.numberOfLines = 0;
    [self.view addSubview:appnamelabel];

    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"百花公园"attributes: @{NSFontAttributeName: [UIFont fontWithName:@"PingFangSC" size: 20],NSForegroundColorAttributeName: [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0]}];
    appnamelabel.attributedText = string;
    appnamelabel.textAlignment = NSTextAlignmentCenter;
    appnamelabel.alpha = 1.0;
    
}


@end
