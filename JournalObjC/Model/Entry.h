//
//  Entry.h
//  JournalObjC
//
//  Created by Jose Martinez on 5/5/20.
//  Copyright © 2020 Jose Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry: NSObject

/*-------------------------------------------------------
  instancetype improves type safety for methods that
  return an instance of the type they were called on
  -------------------------------------------------------*/
-(instancetype)initWithTitleFunc:(NSString *)title
                            text:(NSString *)text
                       timeStamp:(NSDate *)timeStamp;

-(instancetype)initWithDictFunc:(NSDictionary *)dictionary;
-(NSDictionary *)dictRepFunc;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *timeStamp;

@end

NS_ASSUME_NONNULL_END
