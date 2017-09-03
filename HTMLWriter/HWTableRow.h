//
//  HWTableRow.h
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWTableData.h"

@interface HWTableRow : NSObject

@property (nonatomic, strong) NSString *rowId;
@property (nonatomic, strong) NSString *rowStyle;
@property (nonatomic, strong) NSString *rowClass;
@property (nonatomic, strong) NSMutableArray *rowData;

-(void)addData: (HWTableData *)tableData;
-(NSString *)createHWRow: (NSString *)rowString;
-(NSString *)createHTMLElement;
-(id)initWithData: (NSArray *)dataArray;
-(void)setDataStyle: (NSString *)style;

@end
