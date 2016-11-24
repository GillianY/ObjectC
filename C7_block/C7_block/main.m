//
//  main.m
//  C7_block
//
//  Created by ucom Apple 13 on 2016/11/24.
//  Copyright © 2016年 GinaY. All rights reserved.
//


//block == closure 把它運作的環境封入封閉範圍內
#import <Foundation/Foundation.h>
#import "A.h"

void callback(void (^myfunc)(void));

int main(int argc, const char * argv[]) {
    void (*kitty)(void);  // function pointer
    kitty = world;
    kitty();
    kitty = hello;
    kitty();
    
    void (*kitty2)(int);
    kitty2 = world2;
    kitty2(100);
    
    void (^kitty3)(int);
    kitty3 = ^(int i){ printf("block 01 %d\n",i);};
    kitty3(20);
    
    __block int v =100;  //block can access it
    void (^kitty4)(void);
    kitty4 = ^{
        v =4;
        printf("block 02: %d\n",v);
    };
    kitty4();
    printf("v: %d\n",v); //changed
    
    void (^gundam)(void) = kitty4;
    gundam();
    
    void(^afunc)(void) = ^{
        printf("hi input funciton\n");
    };
    
    callback(kitty4);
    callback(afunc);
    
    
    return 0;
}
void callback(void (^myfunc)(void))
{
    myfunc();
}
