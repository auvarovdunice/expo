
#import "EXPermissionUserNotificationCenter.h"
#import <EXCore/EXUtilities.h>

@implementation EXPermissionUserNotificationCenter

EX_REGISTER_MODULE();

+ (const NSArray<Protocol *> *)exportedInterfaces
{
  return @[@protocol(EXUserNotificationsPermissionsCenterInterface)];
}

- (void)getNotificationSettingsWithCompletionHandler:(void(^)(UNNotificationSettings *settings))completionHandler
{
  [[UNUserNotificationCenter currentNotificationCenter] getNotificationSettingsWithCompletionHandler:completionHandler];
}

- (void)requestAuthorizationWithOptions:(UNAuthorizationOptions)options completionHandler:(void (^)(BOOL granted, NSError *__nullable error))completionHandler
{
  [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:options completionHandler:completionHandler];
}

@end



