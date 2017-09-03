//
//  HWTableRow.m
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "HWTableRow.h"

@implementation HWTableRow

-(id)init{
    self = [super init];
    if(self){
        self.rowId = @"";
        self.rowClass = @"";
        self.rowStyle = @"";
        self.rowData = [[NSMutableArray alloc]init];
    }

    return self;
}

-(id)initWithData: (NSArray *)dataArray{
    self = [super init];
    if(self){
        self.rowId = @"";
        self.rowClass = @"";
        self.rowStyle = @"";
        self.rowData = [[NSMutableArray alloc]initWithArray:dataArray];
    }
    
    return self;
}

-(void)addData:(HWTableData *)tableData{
    [self.rowData addObject:tableData];

}

-(NSString *)createHWRow: (NSString *)rowString{
    NSString *str = [NSString stringWithFormat:@"<tr class=\"%@\", style = \"%@\", id= \"%@\">%@</tr>",_rowClass, _rowStyle, _rowId, rowString];
    
    return  str;
}


-(NSString *)createHTMLElement{
    
    NSString *tr = @"";
    for (HWTableData *data in self.rowData){
        NSString *dataString = [data createHTMLElement];
        tr = [tr stringByAppendingString:dataString];
    }
    NSString *str = [NSString stringWithFormat:@"<tr class=\"%@\", style = \"%@\", id= \"%@\">%@</tr>",_rowClass, _rowStyle, _rowId, tr];
    return  str;
}

-(void)setDataStyle: (NSString *)style{
    for (HWTableData * data in self.rowData){
        data.dataStyle = style;
    }
}

@end
