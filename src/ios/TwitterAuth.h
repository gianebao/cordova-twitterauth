//
//  TwitterPlugin.h
//  TwitterPlugin
//
//  Created by Petr G.
//

    #import <Foundation/Foundation.h>
    #import <Twitter/Twitter.h>
    #import <Accounts/Accounts.h>
    #import <Cordova/CDVPlugin.h>
    #import <Cordova/CDVJSON.h>


@interface TwitterAuth : CDVPlugin

- (void)echo:(CDVInvokedUrlCommand*)command;

@end