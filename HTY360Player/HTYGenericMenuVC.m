//
//  HTYGenericMenuVC.m
//  HTY360Player
//
//  Created by  on 11/8/15.
//  Copyright © 2015 Hanton. All rights reserved.
//

#import "HTYGenericMenuVC.h"
#import "HTY360PlayerVC.h"

#define DIAPORAMA_DELAY 1.0 // delay between slide image in seconds

@interface HTYGenericMenuVC () {
  
}

@end

@implementation HTYGenericMenuVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

}

//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//  return UIInterfaceOrientationMaskLandscape;
//}

#pragma mark launch actions

-(void) launchVideoWithName:(NSString*)name {
  NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"mp4"];
  NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
    
//    NSString* path = @"http://vlive3.hls.cdn.ucloud.com.cn/ucloud/test/playlist.m3u8";
//    NSURL* url = [[NSURL alloc] initWithString:path];
    
  HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:url];
  
  if (![[self presentedViewController] isBeingDismissed]) {
    [self presentViewController:videoController animated:YES completion:nil];
  }
}

-(void) launchHLSVideo {
    
    //   http://devimages.apple.com/iphone/samples/bipbop/gear1/prog_index.m3u8
    // http://vlive3.hls.cdn.ucloud.com.cn/ucloud/test/playlist.m3u8            公司
    NSString *path = @"http://vlive3.hls.cdn.ucloud.com.cn/ucloud/test/playlist.m3u8";
    NSURL *url = [[NSURL alloc] initWithString:path];
    
    
    HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:url];
    videoController.Hls = YES;
    
    if (![[self presentedViewController] isBeingDismissed]) {
        [self presentViewController:videoController animated:YES completion:nil];
    }
}

-(void) openURLWithString:(NSString*)stringurl {
  NSURL *url = [NSURL URLWithString:stringurl];
  [[UIApplication sharedApplication] openURL:url];
}

@end
