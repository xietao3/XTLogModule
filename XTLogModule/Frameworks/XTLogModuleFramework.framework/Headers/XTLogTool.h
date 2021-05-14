//
//  XTLogTool.h
//  DemoTools
//
//  Created by Tao.Xie on 2021/1/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, XTLogLevel) {
    XTLogLevelDebug = 0,
    XTLogLevelTest,
    XTLogLevelProduction,
    XTLogLevelNoneLog
};

#define XTLog(format,...) [XTLogTool logString:format, ##__VA_ARGS__];

@interface XTLogTool : NSObject

+ (void)logString:(NSString *)string;

+ (void)setLogLevel:(XTLogLevel)logLevel;

@end

NS_ASSUME_NONNULL_END
