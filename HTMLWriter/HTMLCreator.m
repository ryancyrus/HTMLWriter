//
//  HTMLCreator.m
//  HTMLWriter
//
//  Created by Ryan on 2017-08-13.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "HTMLCreator.h"

@implementation HTMLCreator

-(id) init{
    self = [super init];
//    if(self){
//        self.html = [NSMutableString stringWithString: @"<html><body></body></html>"];
//        
//    }
    return self;
}

-(NSString *)createHTML{
    NSString *html = @"";
    NSString *table = @"";
    for(HWTableRow* row in self.table.tableRows){
        NSString *tr = @"";
        for (HWTableData *data in row.rowData){
            NSString *dataString = [data createHTMLElement];
            [tr stringByAppendingString:dataString];
        }
        [table stringByAppendingString:tr];
        
    }
    
    return html;
    
}


-(NSString *)createHTMLElement{
    NSString *table = [self.table createHTMLElement];
    NSString *rawString = [NSString stringWithFormat:@"<html><body>%@</body></html>",table];
    return rawString;
}


@end
