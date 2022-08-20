/*
 * funcPtr.cpp
 *
 *  Created on: Dec 9, 2018
 *      Author: vivsharm
 */
// A simple C program to show function pointers as parameter

#include <iostream>
#include <string>
#include <cmath>
#include "MyMain.h"

using namespace std;
// A normal function with an int parameter
// and void return type


void fun(int a)
{
	cout << "value of a is = " << a << endl;
}

void add(int a, int b)
{
	cout << "a+b = " << a+b << endl;
}

void sub(int a, int b)
{
	cout << "a-b = " << a-b << endl;
}

void multiply(int a, int b)
{
	cout << "a*b = " << a*b << endl;
}

void funcPtrAsAnArg(func_ptr_data_type func_ptr)
{
	func_ptr(30);
}

func_ptr_data_type funcPtrAsRetunVal(func_ptr_data_type func_ptr)
{
  func_ptr_data_type ptr;
  ptr = func_ptr;
  cout << "I am in funcPtrAsRetunVal()" << endl;
  return ptr;
}





