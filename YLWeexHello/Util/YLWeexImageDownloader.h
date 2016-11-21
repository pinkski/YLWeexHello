//
//  YLWeexImageDownloader.h
//  YLWeexHello
//
//  Created by 张晓岚 on 16/11/20.
//  Copyright © 2016年 ThinkMobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>
#import <SDWebImage/SDWebImageManager.h>

@interface YLWeexImageDownloader : NSObject

- (id)downloadImageWithURL:(NSString *)url imageFrame:(CGRect)imageFrame userInfo:(NSDictionary *)options completed:(void(^)(UIImage *image, NSError *error, BOOL finished))completedBlock;

@end
