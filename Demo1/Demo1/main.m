//
//  main.m
//  Demo1
//
//  Created by ucom Apple 13 on 2016/11/15.
//  Copyright © 2016年 ucom Apple root. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//              NSLog(@"Hello, World!");
//    }
//NSString -> @"test";
    
    int a;
    printf("%d\n",a); // 沒初始化 亂印
    char *s3;
    //printf("",*s3)
    
    NSString *s1 = @"aa"; //object varibale
    char *s2 = "aaaa";
    NSLog(@"Hello, World!");
    NSLog(@"Ciao, Gina %d %@",3423,s1);
    NSString *str = @"String object to a C string";
    const char *ptr = [str cStringUsingEncoding:NSUTF8StringEncoding];
    printf("%s\n", ptr);
       printf("Bonjour, Gillian  %s %d  \n",[s1 cStringUsingEncoding:NSUTF8StringEncoding],123); //c
    
    
    //=====================c language========================//
    int v1 =0;
    long int v2 =0; //別名 long
    short int v3 = 0;
    short unsigned int v4 =0;
    
    unsigned char v5 = 5 ; //8 bit -> java 1 byte
    
    int v;
    for(v= 1;v<=10;++v ){
        printf("%d \n",v);
    }
    
    int x =5;
    long x1 =x ; //int -> long OK
    printf("x: %d\n",x1); // %ld -> lond d
    
    
    long x2 = 500000000000000 ;
    short int x3 = x2;
    printf("x: %d\n",x3);  // long -> int 不要逸位就可以
                    //  逸位 ->變奇怪的數字  會有安全性問題
    short int x4 = (short)x2;
    printf("x4: %d\n",x4);
    
    // no boolean
    int b=0;
    if(b){ // !=0 , including -8
        printf("true\n");
    }else{ //0
         printf("false\n");
    }
    
    BOOL b2 = NO; //他是整數(實際上是char)的別名 ＢＯＯＬ是別名 //NO==0,YES==1
    b2= b2+3; //OK
    
    const int q1 = 5;
    double const y = 10;  // const 位置 在指標上會有差別！！
    //q1 =10; //error
    
    
    

    return 0;
}
