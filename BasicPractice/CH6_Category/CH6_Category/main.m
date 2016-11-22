//
//  main.m
//  CH6_Category
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "NSString+C.h" // 可以在clang下指令時 加入 NSString+C.m

int main(int argc, const char * argv[]) {
    NSString *str = @"Hello Gina" ;
    
    printf("%s  %lu\n", [str UTF8String],[str length]); //?? %lu
    //NSString : UTF8
    //CString  : ACSII
    

    A *oa = [[A alloc ]init];
    A *ob = [A new]; //不會有人用 ,因為通常還是要自己去宣告init的內容
    // new 是一種特別的method
    
    [str sayHello]; //Category
    
    NSString *greeting = [oa sayHi];
    printf("%s  %lu\n", [greeting UTF8String],[str length]);
    
    int x =10;
    int *ia; // c: array
    ia = malloc(sizeof(int)*x);
    
    
    return 0;
}
