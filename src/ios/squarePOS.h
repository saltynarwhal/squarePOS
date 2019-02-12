/********* squarePOSplugin.h Cordova Plugin Header *******/

#import <Cordova/CDVPlugin.h>

@interface squarePOS : CDVPlugin

- (void) startTransaction:(CDVInvokedUrlCommand*) command;

@end
