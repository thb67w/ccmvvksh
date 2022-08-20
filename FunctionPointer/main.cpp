/*
 * main.cpp
 *
 *  Created on: Dec 13, 2018
 *      Author: vivsharm
 */

#include <iostream>

#include "MyMain.h"

using namespace std;



int main()
{

	HelloWorld();

	// func_ptr_data_type is a user defined data type
	func_ptr_data_type fun_ptr1  = &fun;
	func_ptr_arr fun_ptr2 = {add, sub, multiply};   // using typedef from header file
	func_ptr_data_type fun_ptr3;
	void (*func_ptr_arr[])(int, int) = {add, sub, multiply}; //defining func pointer here.

	// Invoking fun() using fun_ptr
	(*fun_ptr1)(10);

	//Invoking Function pointer array
	func_ptr_arr[0](4,5); //function call through function pointer defined above
	func_ptr_arr[1](4,2); //function call through function pointer defined above
	func_ptr_arr[2](11,1); //function call through function pointer defined above

	fun_ptr2[0](4,7); //function call through function pointer typedef defined in header file
	fun_ptr2[1](18,9); //function call through function pointer typedef defined in header file
	fun_ptr2[2](1,2); //function call through function pointer typedef defined in header file

	(*fun_ptr1)(20); //just recalling with different value
	funcPtrAsAnArg(fun_ptr1); //function pointer as an argument.

	fun_ptr3 = funcPtrAsRetunVal(fun_ptr1);
	funcPtrAsAnArg(fun_ptr3);


	myScopedUnscopedEnum();

	cout << "I am done" << endl;
	return 0;
}


