//
//  ViewController.m
//  MPMoviePlay
//
//  Created by wanglong on 16/8/7.
//  Copyright © 2016年 wanglong. All rights reserved.
//

/*
 MP3远程链接
 http://cc.stream.qqmusic.qq.com/C100003j8IiV1X8Oaw.m4a?fromtag=52
 
 视频链接
 http://v1.mukewang.com/19954d8f-e2c2-4c0a-b8c1-a4c826b5ca8b/L.mp4
 http://v1.mukewang.com/3e35cbb0-c8e5-4827-9614-b5a355259010/L.mp4
 http://v1.mukewang.com/a45016f4-08d6-4277-abe6-bcfd5244c201/L.mp4
 */

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController ()
/** playerVc */
@property(nonatomic,strong)MPMoviePlayerController *playerVc;

/** playerViewController */
@property(nonatomic,strong)MPMoviePlayerViewController *playerViewController;
@end

@implementation ViewController
- (MPMoviePlayerViewController *)playerViewController
{
    if (_playerViewController == nil) {
            NSURL *url = [NSURL URLWithString:@"http://v1.mukewang.com/19954d8f-e2c2-4c0a-b8c1-a4c826b5ca8b/L.mp4"];
        _playerViewController = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    }
    return _playerViewController;
}

- (MPMoviePlayerController *)playerVc
{
    if (_playerVc == nil) {
        NSURL *url = [NSURL URLWithString:@"http://v1.mukewang.com/19954d8f-e2c2-4c0a-b8c1-a4c826b5ca8b/L.mp4"];
        AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
//        
//        _playerVc = [[AVPlayerViewController alloc] init];
//        
//        [_playerVc.player replaceCurrentItemWithPlayerItem:item];
        
        _playerVc = [[MPMoviePlayerController alloc] initWithContentURL:url];
        _playerVc.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width * 9 /16);
        [self.view addSubview:_playerVc.view];
    }
    return _playerVc;
}
- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)play1:(id)sender {
       [self.playerVc play];
}
- (IBAction)play2:(id)sender {
    [self presentViewController:self.playerViewController animated:YES completion:nil ];
}



@end
