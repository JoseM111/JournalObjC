#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EntryTableViewCell : UITableViewCell

// MARK: _@IBOutlets
/**©------------------------------------------------------------------------------©*/
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *entryLabel;
/**©------------------------------------------------------------------------------©*/
@end

NS_ASSUME_NONNULL_END
