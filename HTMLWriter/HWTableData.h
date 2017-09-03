//
//  HWTableData.h
//  HTMLWriter
//
//  Created by Ryan on 2017-09-02.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWTableData : NSObject

@property (nonatomic, strong) NSString *data;
@property (nonatomic, strong) NSString *dataClass;
@property (nonatomic, strong) NSString *dataStyle;
@property (nonatomic, strong) NSString *dataId;

-(NSString *)createHTMLElement;
-(id)initWithData: (NSString *)inputData;

@end
