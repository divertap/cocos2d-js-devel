//
//  main.m
//  Bug_Memory_PureObjC
//
//  Created by Manel Mateos Ramírez on 20/01/13.
//  Copyright Divertap 2013. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"AppController");
    [pool release];
    return retVal;
}
