//
//  HTMLCreator.h
//  HTMLWriter
//
//  Created by Ryan on 2017-08-13.
//  Copyright © 2017 Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWTable.h"

@interface HTMLCreator : NSObject

@property(nonatomic, strong) HWTable* table;

-(NSString *)createHTML;
-(NSString *)createHTMLElement;
@end
