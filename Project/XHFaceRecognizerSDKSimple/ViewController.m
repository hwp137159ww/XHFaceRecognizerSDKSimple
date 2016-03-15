//
//  ViewController.m
//  XHFaceRecognizerSDKSimple
//
//  Created by 曾 宪华 on 13-12-26.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.simpleImageView = [[XHFaceRecognizerView alloc] initWithFrame:CGRectMake(0, 64, 320, 320)];
    [self.view addSubview:self.simpleImageView];
    
    [self reset:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    self.simpleImageView = nil;
}

- (IBAction)recognizer:(id)sender {
    [self.simpleImageView startFaceRecognizer];
}

- (IBAction)reset:(id)sender {
    [self.simpleImageView resetNormalImage:[UIImage imageNamed:@"steves.jpg"]];
}

- (IBAction)cropped:(id)sender {
    [self.simpleImageView croppingFaceWtihFaceCropCompelted:^(NSArray *croppedImages, NSError *error) {
        NSLog(@"croppedImages : %@", croppedImages);
    }];
}

@end
