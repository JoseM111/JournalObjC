#import "Entry.h"

static NSString * const TitleKey = @"title";
static NSString * const TextKey = @"text";
static NSString * const TimestampKey = @"timestamp";

@implementation Entry
/**©------------------------------------------------------------------------------©*/
- (instancetype)initWithTitleFunc:(NSString *)title text:(NSString *)text timeStamp:(NSDate *)timeStamp {
    self = super.init;

    if (self) {
        _title = title;
        _text = text;
        _timeStamp = timeStamp;
    }
    return self;
}
/**©------------------------------------------------------------------------------©*/
- (instancetype)initWithDictFunc:(NSDictionary *)dictionary {
    NSString *title = dictionary[TitleKey];
    NSString *text = dictionary[TextKey];
    NSDate *timeStamp = dictionary[TimestampKey];

    return [self initWithTitleFunc:title text:text timeStamp:timeStamp];
}
/**©------------------------------------------------------------------------------©*/
- (NSDictionary *)dictRepFunc {
    return @{
            TitleKey: self.title,
            TextKey: self.text,
            TimestampKey: self.timeStamp
    };
}
/**©------------------------------------------------------------------------------©*/
// `Swift` equatable, `Java` isEqual--> instanceOf
-(BOOL)isEqual:(id)object {
    // Using an ternary operator if ! instanceOf return ?  'NO' else return 'YES'!
    return ![object isKindOfClass:Entry.class] ? NO
            : [self.dictRepFunc isEqualToDictionary:((Entry *) object).dictRepFunc];
}
/**©------------------------------------------------------------------------------©*/
@end
