//
//  ViewController.m
//  HTMLWriter
//
//  Created by Ryan on 2017-08-06.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView = [[UIWebView alloc]initWithFrame: self.view.frame];
    [self.webView setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:self.webView];
    
    NSString *myHTML = @"<html><body><h1>Hello, world!</h1></body></html>";
    [self.webView loadHTMLString:myHTML baseURL:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
