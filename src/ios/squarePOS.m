/********* squarePOSplugin.m Cordova Plugin Implementation *******/

#import "squarePOS.h"
#import <Cordova/CDVPlugin.h>

@interface squarePOS ()

@property (strong, nonatomic) NSString* callbackId;

@end

@implementation squarePOS

- (void) startTransaction:(CDVInvokedUrlCommand*) command {
  self.callbackId = command.callbackId;

  CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"worked"];

  [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
}

@end
