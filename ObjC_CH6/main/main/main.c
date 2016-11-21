//
//  main.c
//  main
//
//  Created by ucom Apple 13 on 2016/11/21.
//  Copyright © 2016年 GinaY. All rights reserved.
//

#import <stdio.h>
#import "B.h"



int main(int argc, const char * argv[]) {
    
        int result=0;
        int a =23;
        int b =19;
        add(&a,&b);
    
        int *t = &a;
        ++t;
    
        printf ("%d + %d = %d\n",a,b,*t);
        return 0;
  
    
    
//    
//    //printf("Hello, World!\n");
//    int result=0;
//    int a =23;
//    int b =19;
//    int *b1 = &b;
//    int *a1 = &a;
//    // printf("%d ,point to= %lu \n",*b1,b1);
//    
//    add(&a,&b);
//    printf ("%d + %d = %d\n",a,b,result);
//    return 0;
}



