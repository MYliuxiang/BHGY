//
//  HomeVC.m
//  BHGY
//
//  Created by liuxiang on 2020/7/2.
//  Copyright © 2020 liuxiang. All rights reserved.
//

#import "HomeVC.h"
#import "LogingViewController.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [MBProgressHUD showSuccess:@"fqwefjfqewfqwefqfweqwq" toView:self.view];
   

   
}
- (IBAction)loginAC:(id)sender {
    LogingViewController *vc = [[LogingViewController alloc]init];
    vc.modalPresentationStyle = 0;
//    vc.view.backgroundColor = [UIColor whiteColor];
   [self presentViewController:vc animated:YES completion:nil];
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
