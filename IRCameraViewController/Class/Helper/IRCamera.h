//
//  IRCamera.h
//  IRCameraViewController
//
//  Created by Phil on 2019/9/20.
//  Copyright © 2019 Phil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IRCameraDelegate <NSObject>

- (void)cameraDidCancel;
- (void)cameraDidSelectAlbumPhoto:(UIImage *)image Note:(NSString*)note;
- (void)cameraDidTakePhoto:(UIImage *)image Note:(NSString*)note;

@optional

- (void)cameraDidSavePhotoWithError:(NSError *)error;
- (void)cameraDidSavePhotoAtPath:(NSURL *)assetURL;
- (void)cameraWillTakePhoto;

@end

@interface IRCamera : NSObject

@end

NS_ASSUME_NONNULL_END
