//
//  IRCameraViewController.h
//  IRCameraViewController
//
//  Created by Phil on 2019/9/20.
//  Copyright © 2019 Phil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IRAlbum.h"
#import "IRAssetsLibrary.h"
#import "IRCamera.h"
#import "IRCameraColor.h"
#import "IRCameraNavigationController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IRCameraViewControllerDelegate <NSObject>

- (void)didFinishPickingImage:(UIImage*)image;

@end

@interface IRCameraViewController : NSObject

@property (weak) id<IRCameraDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
