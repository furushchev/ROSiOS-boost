//
//  main.mm
//  ROSiOS-boost
//
//  Created by Furushchev on 01/25/2016.
//  Copyright (c) 2016 Furushchev. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ROSAppDelegate.h"

#include <boost/lambda/lambda.hpp>
#include <iostream>
#include <iterator>
#include <algorithm>
#include <sstream>


int main(int argc, char * argv[])
{   
    using namespace boost::lambda;
    typedef std::istream_iterator<int> iit;
    
    std::stringstream ss;
    ss << "hogehoge fugafuga foo bar";
    
    std::for_each(iit(std::cin), iit(), std::cout << (_1 * 3) << " ");
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ROSAppDelegate class]));
    }
}
