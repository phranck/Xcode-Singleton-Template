//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAMEASIDENTIFIER___.h"


@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Creating a singleton instance

+ (instancetype)sharedInstance {
    static dispatch_once_t _onceToken;
    static id _sharedInstance;
    dispatch_once(&_onceToken, ^{
        _sharedInstance = [[[self class] alloc] initSingleton];
    });
    return _sharedInstance;
}

- (instancetype)initSingleton {
    self = [super init];
    if (self) {
        // put your inits here
		
    }
    return self;
}

- (instancetype)init {
    @throw [[self class] initException];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    @throw [[self class] initException];
}

#pragma mark - Init Exception

+ (NSException *)initException {
    NSString *exceptionMessage = [NSString stringWithFormat:@"'%@' is a Singleton, you must NOT call init manually! Use +sharedInstance instead.", [self class]];
    return [NSException exceptionWithName:NSInternalInconsistencyException reason:exceptionMessage userInfo:nil];
}

@end
