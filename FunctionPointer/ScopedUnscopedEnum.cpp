/*
 * ScopedUnscopedEnum.cpp
 *
 *  Created on: Jan 29, 2019
 *      Author: vivsharm
 */
#include <iostream>
#include <string>

using namespace std;

enum class Color
{
	green,
	blue
};

enum Flavor : unsigned short int
{
	vanilla,
	choclate,
	strawberry,
	mint
};

std::string flavor;
std::string color;


int myScopedUnscopedEnum()
{
	Color c = Color::blue;
	Flavor f = vanilla;
	c = Color::green;

    switch(c)
    {
    case Color::blue:
    	color = "blue";
    	break;

    case Color::green:
    	color = "green";
    	break;

    default:
    	color = "nothing";
    	break;
    }

    switch(f)
    {
    case vanilla:
    	flavor = "vanilla";
    	break;

    case strawberry:
    	flavor = "strawberry";
    	break;

    case mint:
    	flavor = "mint";
    	break;

    case choclate:
    	flavor = "choclate";
    	break;

    default:
    	flavor = "nothing";
    	break;
    }

    std::cout << "color is " << color.c_str() << " (" << static_cast<int>(c) << " )" << endl;
    return 0;
}
