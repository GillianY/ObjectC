//
//  main.c
//  Ctest
//
//  Created by ucom Apple 13 on 2016/11/17.
//  Copyright © 2016年 GinaY. All rights reserved.
// http://openhome.cc/Gossip/CGossip/StructABC.html

#include <stdio.h>

//Toy1.....
//void foo(Toy1);

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    
    //------struct-------
    struct _abcd {int a; int b; int c;};
    typedef struct _abcd aaa;
    
    aaa p2;
    p2.a =3;
    p2.b= 5;
    printf("p2: %d , %d\n",p2.a,p2.b); //???
    aaa p3;
    p3.a =9;
    p3.b= 10;
    printf("p3: %d , %d\n",p3.a,p3.b);
    
    
    struct Ball{
        char color[10];
        double radius;
    };
    
    struct {
        char color[10];
        double radius;
    }; // 匿名 struct
    
    typedef struct {char color[10];double radius;} Toy2;
    
    Toy2 *t ;
    t= malloc(sizeof(Toy2));
    //t->color ="pink";  // char[10] is not assignable
    strcpy(t->color, "pink");
    t->radius = 10.0;
    printf("toy2: %s , %f",t->color,t->radius);
    
   // free(t); //????
    
    
    typedef struct Ball Sphere;
    
    struct Ball b1 = {"red",10.0};
    struct Ball b2 ;
    strcpy(b2.color,"green");
    b2.radius = 9.0;
    
    struct Ball b3 = {.radius=6.0, .color="blue"};
    printf("ball1: %s,\t %.2f \n ",b2.color,b2.radius);
    printf("ball2: %s,\t %.2f \n ",b3.color,b3.radius);
    
    struct Ball balls[] ={
        {"yellow",1.0},
        {"white", 5.0},
        {"black", 10.9 }
    };
    for(int i = 0; i < 3; i++) {
        printf("balls array : %s,\t%.2f\n", balls[i].color, balls[i].radius);
    }

    typedef struct Ball Toy1;
     // while assign
    Toy1 t1 = b1;
    b1.radius = 999.0;
    printf("b1: %.2f \n",b1.radius); // not the same , 999
    printf("t1: %.2f \n",t1.radius); // 10
    
    void foo(Toy1); //??? OK
    
    // void foo(Toy1 t){ t.ta....}  //error  function defined can't be here
    
    
    
    return 0;
}


//void foo(Ball ball) { // ball 成員值被複製過來
//    ball.radius = 100.0;
//}
