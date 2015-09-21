//
//  localfileRead.m
//  AlterCount
//
//  Created by 陈宣 on 15/9/10.
//  Copyright (c) 2015年 陈宣. All rights reserved.
//

#import <Foundation/Foundation.h>

@implementation localfileRead:NSObject




NSString* ReadCountFile()
{
    
    NSArray *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *ourDocumentPath = [documentPath objectAtIndex:0];
    NSString *FileName = [ourDocumentPath stringByAppendingPathComponent:@"altercount.txt"];
    
    return FileName;
}@end