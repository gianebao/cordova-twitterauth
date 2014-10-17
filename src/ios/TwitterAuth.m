#include <sys/types.h>
#include <sys/sysctl.h>

#import <Cordova/CDV.h>
#import <Cordova/CDVJSON.h>
#import <Cordova/CDVAvailability.h>
#import "TwitterAuth.h"

@implementation TwitterAuth

- (void)echo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)loginWithBlock:(CDVInvokedUrlCommand*)command {
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    ACAccountType *accountType = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];

    NSArray *accountsArray = [accountStore accountsWithAccountType:accountType];
    ACAccount *twitterAccount = [accountsArray objectAtIndex:0];
    NSString *username = twitterAccount.username;

    NSString *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:username];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
