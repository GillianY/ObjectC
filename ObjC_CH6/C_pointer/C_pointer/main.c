//
//  main.c
//  C_pointer
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int v1 = 19;
    int v2 = 23;
    int v3 = 2;
    
    int p1 = v2;
    int *p2 = &v2;
    int *p3 = &v2;
    
    printf("v1: %d :%lu \n",v1,&v1);
    printf("v2: %d :%lu \n",v2,&v2);
    printf("v3: %d :%lu \n",v3,&v3);
    printf("p2: %d :%lu \n",*p2,p2);
    ++p2;
    printf("p2++(v1): %d :%lu \n",*p2,p2);
    p2 -=2;
    printf("p2--(v3): %d :%lu \n",*p2,p2);
    
    int *v ;
    printf("*v--1: %d \n",v);// *v compile error , v: 0-> clang 會出現亂碼嗎？
    v = malloc(sizeof(int));
    printf("*v--2: %d :%lu \n",*v,v); //0, XXXX..08 ; 0-> clang 會出現亂碼嗎？
    *v= *p2+*p3;
    printf("*v--3: %d :%lu \n",*v,v);

    printf("Hello, World!\n");
    return 0;
}
