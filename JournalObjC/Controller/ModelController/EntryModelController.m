#import "EntryModelController.h"
#import "Entry.h"

static NSString * const EntriesKey = @"entries";

@implementation EntryModelController {
// NSArray:--? A static ordered collection of objects.
@private NSMutableArray *_entries;
}

// MARK: _@shared instance
/**©------------------------------------------------------------------------------©*/
+(EntryModelController *)shared {
    static EntryModelController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = EntryModelController.alloc.init;
        [shared loadFromPersistentFunc];
    });
    return shared;
}
// MARK: _@Methods/Functions implementation
/**©------------------------------------------------------------------------------©*/
- (void)saveToPersistenceFunc {
    NSMutableArray *entryDict = NSMutableArray.new;
    for (Entry *entry in _entries) {
        [entryDict addObject:entry.dictRepFunc];
        [NSUserDefaults.standardUserDefaults setObject:entryDict forKey:EntriesKey];
    }
}
/**©------------------------------------------------------------------------------©*/
- (void)loadFromPersistentFunc {
    NSArray *entryDict = [NSUserDefaults.standardUserDefaults objectForKey:EntriesKey];
    for (NSDictionary *dict in entryDict) {
        Entry *entry = [Entry.alloc initWithDictFunc:dict];
        [self createEntryFunc:entry];
    }
}
/**©------------------------------------------------------------------------------©*/
- (void)createEntryFunc:(Entry *)entry {
    [_entries addObject:entry];
}
/**©------------------------------------------------------------------------------©*/
- (void)removeEntryFunc:(Entry *)entry {
    [_entries removeObject:entry];
}
/**©------------------------------------------------------------------------------©*/
@end
