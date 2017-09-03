//
//  HWTable.h
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWTableRow.h"

@interface HWTable : NSObject

@property (nonatomic, strong) NSMutableArray *tableRows;
@property (nonatomic, strong) NSString *tableClass;
@property (nonatomic, strong) NSString *tableStyle;
@property (nonatomic, strong) NSString *tableId;

-(void)addRow: (HWTableRow *)tableRow;
-(NSString *)createHWTable: (NSString *)tableString;
-(NSString *)createHTMLElement;

-(id)initWithRows: (NSArray *)rowsArray;
@end
