//
//  YLWeexImageDownloader.m
//  YLWeexHello
//
//  Created by 张晓岚 on 16/11/20.
//  Copyright © 2016年 ThinkMobile. All rights reserved.
//

#import "YLWeexImageDownloader.h"




@implementation YLWeexImageDownloader


WX_EXPORT_METHOD(@selector(downloadImageWithURL:imageFrame:userInfo:completed:));


- (id)downloadImageWithURL:(NSString *)url imageFrame:(CGRect)imageFrame userInfo:(NSDictionary *)options completed:(void(^)(UIImage *image, NSError *error, BOOL finished))completedBlock {
    
    return (id)[[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:url] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        if (completedBlock) {
            completedBlock(image, error, finished);
        }
    }];
    
}

- (instancetype)initWithRef:(NSString *)ref type:(NSString*)type styles:(nullable NSDictionary *)styles attributes:(nullable NSDictionary *)attributes events:(nullable NSArray *)events weexInstance:(WXSDKInstance *)weexInstance {
//    self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance];
//    if (self) {
//        _title = [WXConvert NSString:attributes[@"title"]];
//    }
    return self;
    
}



@end
