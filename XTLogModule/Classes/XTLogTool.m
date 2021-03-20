//
//  XTLogTool.m
//  DemoTools
//
//  Created by Tao.Xie on 2021/1/21.
//

#import "XTLogTool.h"

@interface XTLogTool ()

@property (nonatomic, assign) XTLogLevel logLevel;

@end

@implementation XTLogTool

+ (instancetype)shareTool {
    static XTLogTool *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[XTLogTool alloc] init];
    });
    return shareInstance;
}

+ (void)logString:(NSString *)string {
    if ([XTLogTool shareTool].logLevel == XTLogLevelNoneLog) return;
    
    if ([XTLogTool shareTool].logLevel == XTLogLevelDebug) {
        printf("Debug:");
    }
    if ([XTLogTool shareTool].logLevel == XTLogLevelTest) {
        printf("Test:");
    }
    if ([XTLogTool shareTool].logLevel == XTLogLevelProduction) {
        printf("Production:");
    }

    NSLog(@"%@",string);
}

+ (void)setLogLevel:(XTLogLevel)logLevel {
    [XTLogTool shareTool].logLevel = logLevel;
}

@end
