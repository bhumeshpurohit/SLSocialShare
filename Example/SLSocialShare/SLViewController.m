//
//  SLViewController.m
//  SLSocialShare
//
//  Created by Bhumesh on 10/28/2015.
//  Copyright (c) 2015 Bhumesh. All rights reserved.
//

#import "SLViewController.h"

@interface SLViewController ()

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)facebookLogin:(id)sender
{
        self.app.social=[[SocialLogin alloc] initWithSocialType:socialTypeFaceBook];
        if(self.app.social.socialType == socialTypeFaceBook)
            {
                    self.app.social.strFBAppId=[@"1669690943263069" mutableCopy];
                    self.app.social.strFBSecretKey=[@"204dda339b1d2143e0343d6f85cb4886" mutableCopy];
                    [self.app.social logoutFacebook];
                    [self.app.social loginWithFacebookWithViewController:self :^(id result, NSError *error, NSString *msg, int status)
                              {
                                      NSLog(@"%@",msg);
                                     // [social postFacebookStatus:@"Hello world" ViewController:self];
                                  }];
                }
        
}
-(IBAction)twitterLogin:(id)sender
{
        self.app.social=[[SocialLogin alloc] initWithSocialType:socialTypeTwitter];
        if(self.app.social.socialType == socialTypeTwitter)
            {
                    self.app.social.strTwitterId=[@"OIqAXQUFaF5UJseYRMAzYhKkh" mutableCopy];
                    self.app.social.strTwitterSecretKey=[@"qUGppQkJ8XtVw4Ax7REVA9ga7a9qBvErB0cy9iEJ7ZHh6em1kA" mutableCopy];
                    [self.app.social loginWithTwitter:^(id result, NSError *error, NSString *msg, int status){
                            if(status == 1)
                                {
                        //                [self.app.social postTweetWithMessage:@"Testing my col tweet" withCompletionBlock:^(id result, NSError *error, NSString *msg, int status)
                        //                 {
                        //                        if(status==1)
                        //                        {
                        //                            // Tweet Posted
                        //                        }
                        //                        else{
                        //                            // Tweet Failed
                        //                        }
                        //                 }];
                        //                [self.app.social logTimeline:^(id result, NSError *error, NSString *msg, int status){
                        //                    if(status == 1)
                        //                    {
                        //                        NSLog(@"%@",result);
                        //                    }
                        //                }];
                        //                [self.app.social toggleStreaming:^(id result, NSError *error, NSString *msg, int status){
                        //                    if(status == 1)
                        //                    {
                        //                        NSLog(@"%@",result);
                        //                    }
                        //                }];
                                    }
                            else{
                                    
                                }
                        } withViewController:self];
                }
}
-(IBAction)googleLogin:(id)sender{
        
        self.app.social=[[SocialLogin alloc] initWithSocialType:socialTypeGoogle];
        if(self.app.social.socialType == socialTypeGoogle)
            {
                    self.app.social.strGoogleId=[@"966996347368-6la6kc68gopvittslfj11javvon21t4l.apps.googleusercontent.com"mutableCopy];
                    [self.app.social logoutGoogle];
                    [self.app.social loginWithGoogle:^(id result, NSError *error, NSString *msg, int status)
                              {
                                      NSLog(@"%@",msg);
                                      [self.app.social postToGooglePlus];
                                      // [social postFacebookStatus:@"Hello world" ViewController:self];
                                  }];
                }
}


-(IBAction)linkedInLogin:(id)sender{
        self.app.social=[[SocialLogin alloc] initWithSocialType:socialTypeLinkedInn];
        if(self.app.social.socialType == socialTypeLinkedInn)
            {
                    [self.app.social loginWithLinkedInn:^(id result, NSError *error, NSString *msg, int status)
                              {
                                      NSLog(@"%@",msg);
                                      NSDictionary *dic=[[NSDictionary alloc] initWithObjects:@[@"iPhone Blog",@"http://icoders.in",@"A blog for those who codes",@"http://www.icoders.in/wp-content/uploads/2015/10/wwdc2015ios9isherebutitshardlyanythingtogetexcitedabout2_1433826801.jpg"]forKeys:@[@"title",@"link",@"description",@"image-url"]];
                                      if(status==1)
                                          {
                                                  [self.app.social postLinkedInnWithMessage:dic withCompletionBlock:^(id result, NSError *error, NSString *msg, intstatus){
                                                          if(status==1)
                                                              {
                                                                      // Success
                                                                  }
                                                          else{
                                                                  // Error
                                                              }
                                                      }];
                                              }
                                      //[self.app.social postToGooglePlus];
                                      // [social postFacebookStatus:@"Hello world" ViewController:self];
                                  }];
                }
}
-(IBAction)instagramLogin:(id)sender{
        self.app.social=[[SocialLogin alloc] initWithSocialType:socialTypeLinkedInn];
        if(self.app.social.socialType == socialTypeLinkedInn)
            {
                    [self.app.social loginWithInstagram :^(id result, NSError *error, NSString *msg, int status)
                             {
                                     NSLog(@"%@",msg);
                                 } withViewController:self];
                }
}

@end
