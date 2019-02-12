/********* squarePOSplugin.m Cordova Plugin Implementation *******/

#import "squarePOSplugin.h"
#import <Cordova/CDVPlugin.h>

@interface squarePOSplugin ()

@property (strong, nonatomic) NSString* callbackId;

@end

@implementation squarePOSplugin

- (void) startTransaction:(CDVInvokedUrlCommand*) command {
  self.callbackId = command.callbackId;

  CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"worked"];

  [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
}

@end
