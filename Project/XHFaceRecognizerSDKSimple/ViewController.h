//
//  ViewController.h
//  XHFaceRecognizerSDKSimple
//
//  Created by 曾 宪华 on 13-12-26.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import <UIKit/UIKit.h>
// 如果提示错误，运行不了，那就把XHFaceRecognizerFramework.framework文件删除了，记得是选择remove reference，而是选择move to trash，然后在文件里面找回这个XHFaceRecognizerFramework.framework文件，重新拖进来
#import <XHFaceRecognizerFramework/XHFaceRecognizerView.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) XHFaceRecognizerView *simpleImageView;

- (IBAction)recognizer:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)cropped:(id)sender;
@end
