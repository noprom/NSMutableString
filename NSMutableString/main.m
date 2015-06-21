//
//  main.m
//  NSMutableString
//
//  Created by noprom on 15/6/21.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 可变字符串是字符串的子类
        NSMutableString *str = [[NSMutableString alloc] initWithCapacity:10];
        [str setString:@"Hello"];
        
        // 1.追加字符串
        [str appendString:@" World"];
        NSLog(@"str = %@",str);
        int a = 10;
        [str appendFormat:@" - %d",a];
        NSLog(@"str = %@",str);
        
        // 2.替换字符串
        NSRange range = [str rangeOfString:@"World"];
        [str replaceCharactersInRange:range withString:@"IOS"];
        NSLog(@"str = %@",str);
        
        // 3.插入字符串
        [str insertString:@"Android" atIndex:6];
        NSLog(@"str = %@",str);
        
        // 4.删除字符串
        NSRange range1 = [str rangeOfString:@"Android"];
        [str deleteCharactersInRange:range1];
        NSLog(@"str = %@",str);
    }
    return 0;
}
