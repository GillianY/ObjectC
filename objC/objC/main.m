//
//  main.m
//  objC
//
//  Created by ucom Apple 13 on 2016/11/17.
//  Copyright © 2016年 GinaY. All rights reserved.
//

//#include "b.h"
#include <stdio.h>
#import <Foundation/Foundation.h>

#define DEBUG_TEST
#define FLAG_ABC 5   //0 :no, other :yes

void abc(int,int);
//void abc(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
             NSLog(@"Hello, World!");
    }
    
    printf("sizeof int :%d bytes \n", sizeof(int)); // 不同的作業系統int 的大小不同
    
    int q ;
    printf("int not initial: %d \n",q); //未宣告數字, 印出亂數
    long int g=10;
    printf("sizeof long int: %d \n",sizeof(long int));
    
    
    short unsigned int ;
    printf("sizeof unsigned int: %d", sizeof(unsigned long int));
    
    
    
    char t ; // 實際上是 8 bit 整數, 沒有byte 形態
    BOOL b =NO ; //別名,實際上是數字 0
    BOOL a = YES; //實際上是 1
    
    
//#ifndef DEBUG_TEST
#ifdef DEBUG_TEST
    printf("debug test...\n");
#else
    printf(" not debug test...\n");
#endif
    
#if !FLAG_ABC
    printf ("flag no....\n");
#else
    printf ("flag yes....\n");

#endif
    abc(1,2);
    
       //----enum-----
    enum abcd{
        aa,
        bb,
        cc
    };
    
    typedef enum abcd xyz;
    
    xyz v = bb;
    
    printf("v; %d \n", v);
    
    //---struct malloc :
    struct _ttt{
        int a;
        double b;
        long int c;
    };
    
    printf("size of this struct %d \n",sizeof( struct _ttt)); //24 ,請直接用 sizeof 確認
    
    
    //---STRUCT----
    struct _abcd {int a; int b; int c;};
    typedef struct _abcd aaa;
    aaa p0 = {1,3,5} ; //靜態配置
    aaa *p; //動態配置
    p =malloc(sizeof(aaa));
    p->a=3;
    printf("a: %d \n",p->a);
    free(p);
    
    //---???????---//
    aaa p2;
    p2.a =3;
    p2.b= 5;
    printf("p2: %d , %d\n",p2.a,p2.b); //???
    aaa p3;
    p3.a =9;
    p3.b= 10;
    printf("p3: %d , %d\n",p3.a,p3.b);
    //---???????---//
    
    struct _abcd bbb={1,2};
    struct _abcd ccc; //why not dynamic ????
    
    
    
    //-----for array
    
    //靜態配置 ,只有靜態配置可以知道陣列長度
    int arraya[] ={1,3,5,7,9};
    int length =sizeof(arraya)/sizeof(int) ;
    
    for(int i =0 ; i< length ; ++i)
    {
        printf("%d\n",arraya[i]);
    }
    
    for(int i =0 ; i< 15 ; ++i)
    {
        printf("__: %d\n",arraya[i]);
    }
    
    int arrayb[3] ={1,3,5,7,9};
    for(int i =0 ; i< 10 ; ++i)
    {
        printf(": %d\n",arrayb[i]);
    }
    
    int arrayc[10] ={1,3,5,7,9}; //other :補上不明亂數
    for(int i =0 ; i< 10 ; ++i)
    {
        printf("-- %d\n",arrayc[i]);
    }

   // for(int i in arrayc){ printf("%d \n", i);}  //error ,because array is not object
    return 0;
}


void abc(int x , int y){ printf("aaa\n");}
//void abc(void){ printf("test");}  //編譯不會過 func name 不可以重複
