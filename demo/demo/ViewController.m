//
//  ViewController.m
//  demo
//
//  Created by Phil on 2019/9/20.
//  Copyright © 2019 Phil. All rights reserved.
//

#import "ViewController.h"0
#import <IRCameraViewController/IRCameraViewController.h>

@interface ViewController ()<IRCameraDelegate> {
    BOOL useCustomizePhotoProcessingView;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self addNewPhotoButtonClick:nil];
}

- (IBAction)addNewPhotoButtonClick:(id)sender {
    // set custom tint color
//    [IRCameraColor setTintColor: [UIColor whiteColor]];
    
    // save image to album
    //[TGCamera setOption:kTGCameraOptionSaveImageToAlbum value:@YES];
    
    // use the original image aspect instead of square
    //[TGCamera setOption:kTGCameraOptionUseOriginalAspect value:@YES];
    
    // hide switch camera button
    //[TGCamera setOption:kTGCameraOptionHiddenToggleButton value:@YES];
    
    // hide album button
    //[TGCamera setOption:kTGCameraOptionHiddenAlbumButton value:@YES;
    
    // hide filter button
//    [IRCamera setOption:kIRCameraOptionHiddenFilterButton value:@YES];
    
    useCustomizePhotoProcessingView = NO;
    IRCameraNavigationController *cameraViewController = [IRCameraNavigationController newWithCameraDelegate:self];
    [self presentViewController:cameraViewController animated:YES completion:nil];
}

- (IBAction)addNewPhotoWithCustomPhotoProcessingButtonClick:(id)sender {
    useCustomizePhotoProcessingView = YES;
    IRCameraNavigationController *cameraViewController = [IRCameraNavigationController newWithCameraDelegate:self];
    [self presentViewController:cameraViewController animated:YES completion:nil];
}

#pragma mark - IRCameraDelegate

- (void)cameraDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cameraDidTakePhoto:(UIImage *)image Note:(NSString *)note
{
//    [self presentPhotoEditPageWithImage:image];
    self.imageView.image = image;
    [self dismiss];
}

- (void)cameraDidSelectAlbumPhoto:(UIImage *)image Note:(NSString *)note
{
//    [self presentPhotoEditPageWithImage:image];
    self.imageView.image = image;
    [self dismiss];
}

- (void)dismiss {
    if(self.navigationController)
        [(UINavigationController *)self.navigationController.topViewController.presentedViewController dismissViewControllerAnimated:YES completion:nil];
    else
        [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}
/*
- (void)presentPhotoEditPageWithImage:(UIImage *)image {
//    if(self.navigationController)
//        [self.navigationController popViewControllerAnimated:YES];
//    else
//        [self dismissViewControllerAnimated:YES completion:nil];
//    [self reloadInfo];
    InventoryPhotoViewController *viewController = [InventoryPhotoViewController newWithDelegate:self photo:image];
    [viewController setAlbumPhoto:YES];
    if(self.navigationController)
        [self.navigationController pushViewController:viewController animated:NO];
    else
        [self presentViewController:viewController animated:NO completion:nil];
}
*/

- (BOOL)customizePhotoProcessingView {
    return useCustomizePhotoProcessingView;
}

@end
