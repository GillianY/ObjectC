//
//  main.m
//  C7_ObjC_autorelase
//
//  Created by ucom Apple 13 on 2016/11/22.
//  Copyright © 2016年 GinaY. All rights reserved.
//

//記憶體管理：
//
//Rule 1:
//(1)誰建立物件由誰遞增該物件RC;
//(2)(owner)誰擁有該物件誰遞增該物件RC;
//(3)(owner)誰擁有該物件由誰遞減該物件RC;
//(4)某物件要被削毀前,遞減其擁有物件的RC;
//(5)回傳物件請向autoreleasepool 註冊以延遲RC遞減行為;
//(6) UIKit 或 Cocoa 應用程式在處理每個event loop 時會自動建立一個autorelease wrapping 該event;
//
//Rule 2 :
//所有類別名稱開頭的物件,都會自動向 autorelease 註冊 ; 包括自己所擁有的物件;


#import <Foundation/Foundation.h>
#import "F.h"
#import "P.h"




int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        F *factory = [[F alloc]init];
        P *p = [factory createProduct];
        
        NSMutableArray *a = [NSMutableArray array]; // 小寫類別名稱
        P *p2 =[[P alloc]init];
        [a addObject:p2];
        //所有類別名稱開頭的物件,都會自動向 autorelease 註冊 ;包括自己所擁有的物件;
        
        [p2 release];
        [factory autorelease];
        printf("end of block\n");
    }
    
    
    
    
    //NSLog(@"Hello, World!");
    return 0;
}
