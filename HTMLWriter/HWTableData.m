//
//  HWTableData.m
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import "HWTableData.h"

@implementation HWTableData

-(id)init{
    self = [super init];
    if(self){
        self.dataId = @"";
        self.dataStyle = @"";
        self.dataClass = @"";
    }
    return self;
}

-(id)initWithData: (NSString *)inputData{
    self = [super init];
    if(self){
        self.dataId = @"";
        self.dataStyle = @"";
        self.dataClass = @"";
        self.data = inputData;
    }
    return self;
}


-(NSString *)createHTMLElement{
//    NSString* str = @"<td class=\"%@\", style = \"%@\", id= \"%@\">";
    NSString *str = [NSString stringWithFormat:@"<td class=\"%@\", style = \"%@\", id= \"%@\">%@</td>",_dataClass, _dataStyle, _dataId, self.data];
    
    return  str;
}
@end
