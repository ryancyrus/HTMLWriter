//
//  ViewController.m
//  HTMLWriter
//
//  Created by Ryan on 2017-08-06.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "ViewController.h"
#import "HTMLCreator.h"

@interface ViewController ()

@property (nonatomic, strong)HTMLCreator* htmlCreator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView = [[UIWebView alloc]initWithFrame: self.view.frame];
    [self.webView setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:self.webView];
    
//    NSString *myHTML = @"<html><body><h1>Hello, world!</h1></body></html>";
//    [self.webView loadHTMLString:myHTML baseURL:nil];
    [self tableCreator];
    [self.webView loadHTMLString:[self.htmlCreator createHTMLElement] baseURL:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableCreator{
    NSString *style1 = @"border: 1px solid black; font-weight:bold";
    NSString *style2 = @"color: red";
    self.htmlCreator = [[HTMLCreator alloc]init];
    HWTableData *data1 = [[HWTableData alloc]initWithData:@"Countries"];
    HWTableData *data2 = [[HWTableData alloc]initWithData:@"Capital"];
    HWTableData *data3 = [[HWTableData alloc]initWithData:@"Population"];
    HWTableData *data4 = [[HWTableData alloc]initWithData:@"Language"];
    HWTableRow *row1 = [[HWTableRow alloc]initWithData:@[data1, data2, data3, data4]];
    [row1 setDataStyle:style1];
    HWTableData *countryUSA = [[HWTableData alloc]initWithData:@"United States of America"];
    HWTableData *capitalUSA = [[HWTableData alloc]initWithData:@"Washington D.C."];
    HWTableData *popuUSA = [[HWTableData alloc]initWithData:@"309 million"];
    HWTableData *langUSA = [[HWTableData alloc]initWithData:@"English"];
    HWTableRow *row2 = [[HWTableRow alloc]initWithData:@[countryUSA, capitalUSA, popuUSA, langUSA]];
    HWTableData *countrySweden = [[HWTableData alloc]initWithData:@"Sweden"];
    HWTableData *capSweden = [[HWTableData alloc]initWithData:@"Stockholm"];
    HWTableData *popuSweden = [[HWTableData alloc]initWithData:@"9 million"];
    HWTableData *langSweden = [[HWTableData alloc]initWithData:@"Swedish"];
    HWTableRow *row3 = [[HWTableRow alloc]initWithData:@[countrySweden,capSweden, popuSweden, langSweden]];
    [row2 setDataStyle:style2];
    HWTable * table = [[HWTable alloc]initWithRows:@[row1, row2, row3]];
    table.tableStyle = @"border: 1px solid black";
    _htmlCreator.table = table;
    
    

}


@end
