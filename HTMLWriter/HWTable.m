//
//  HWTable.m
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "HWTable.h"

@implementation HWTable

-(id)init{
    self = [super init];
    if(self){
        self.tableId = @"";
        self.tableClass = @"";
        self.tableRows = [[NSMutableArray alloc]init];
    
    }
    return self;
}


-(id)initWithRows: (NSArray *)rowsArray{
    self = [super init];
    if(self){
        self.tableId = @"";
        self.tableClass = @"";
        self.tableRows = [[NSMutableArray alloc]initWithArray:rowsArray];
        
    }
    return self;
}

-(void) addRow:(HWTableRow *)tableRow{
    [self.tableRows addObject:tableRow];
}

-(NSString *)createHWTable: (NSString *)tableString{
    NSString *str = [NSString stringWithFormat:@"<table class=\"%@\", style = \"%@\", id= \"%@\">%@</table>",_tableClass, _tableStyle, _tableId, tableString];
    
    return  str;
}

-(NSString *)createHTMLElement{
    
    NSString *table = @"";
    for (HWTableRow *data in self.tableRows){
        NSString *dataString = [NSString stringWithString:[data createHTMLElement]];
        table = [table stringByAppendingString:dataString];
    }
    NSString *str = [NSString stringWithFormat:@"<table class=\"%@\", style = \"%@\", id= \"%@\">%@</table>",_tableClass, _tableStyle, _tableId, table];
    return  str;
}

@end
