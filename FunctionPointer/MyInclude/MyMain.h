/*
 * MyMain.h
 *
 *  Created on: Dec 13, 2018
 *      Author: vivsharm
 */

#ifndef MYMAIN_H_
#define MYMAIN_H_





//User defined data type
//varaible of below type shall holds pointer to a function which is input of type int
typedef void (*func_ptr_data_type)(int);
typedef void (*func_ptr_arr[])(int, int);


//Function Declerations
void fun(int a);
int HelloWorld();
void add(int a, int b);
void sub(int a, int b);
void multiply(int a, int b);
void funcPtrAsAnArg(func_ptr_data_type);
func_ptr_data_type funcPtrAsRetunVal(func_ptr_data_type);

int myScopedUnscopedEnum();

#endif /* MYMAIN_H_ */
