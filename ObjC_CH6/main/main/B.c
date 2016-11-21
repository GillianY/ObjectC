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

