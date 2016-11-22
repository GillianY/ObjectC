//
//  B.c
//  main
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import "B.h"

void add(int *a, int *b){
    int *v1 = a;
    ++v1;
    *v1=  *a + *b;
   }

void add2(int a, int b, int *c)
{ *c = a + b; }

void *add3(int a,int b)
{
    int k = a+b;
    int *v = &k;
    return *v;
}

// int v2 =100;
// int *p = &v2;  // p: address , *p = 100
//++p;

//void add(int *a, int *b){
//    
//    printf("%lu %lu %lu %lu\n",a,b,*a,*b);
//    // *a = *a+1;
//    int *v1 = a;
//    ++v1;
//    printf("%lu %lu %lu %lu\n",a,*a,v1,*v1);
//    //*v1 = malloc(sizeof(int));
//    *v1=  *a + *b;
//    printf("%lu %lu %lu %lu\n",a,*a,v1,*v1);
//    //v1 = *a + *b;
//    
//}

//error
//void add(int *a, int *b,int *add){
//}

