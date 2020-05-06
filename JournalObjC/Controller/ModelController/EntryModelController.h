#import <Foundation/Foundation.h>
@class Entry;

NS_ASSUME_NONNULL_BEGIN

@interface EntryModelController : NSObject
// MARK: _@Methods/Functions
/**©-------------------------------------------©*/
-(void) saveToPersistenceFunc;
-(void) createEntryFunc:(Entry *)entry;
-(void) removeEntryFunc:(Entry *)entry;
/**©-------------------------------------------©*/
// MARK: shared instance
+(EntryModelController *) shared;
// MARK: _@entries:--? Not needed in this file.
// Can be declared in `.m` file.
// inside the @implementation EntryModelController {
//// NSArray:--? A static ordered collection of objects.
//@private NSMutableArray *_entries;
//}
//@property (nonatomic, strong, readonly) NSArray *entries;
@end

NS_ASSUME_NONNULL_END
