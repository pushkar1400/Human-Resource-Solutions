//
//  Helper.m
//  CS
//
//  Created by Sahil Moradiya on 11/12/21.
//

#import "Helper.h"

@implementation Helper

+(void)storedToiCloud:(NSURL *)localURL {
    // Let's get the root directory for storing the file on iCloud Drive
    [self rootDirectoryForICloud:^(NSURL *ubiquityURL) {
        NSLog(@"1. ubiquityURL = %@", ubiquityURL);
        if (ubiquityURL) {

            // We also need the 'local' URL to the file we want to store
           // NSURL *localURL = [self localPathForResource:@"test7" ofType:@"rtf"];
            NSLog(@"2. localURL = %@", localURL);

            // Now, append the local filename to the ubiquityURL
            ubiquityURL = [ubiquityURL URLByAppendingPathComponent:localURL.lastPathComponent];
            NSLog(@"3. ubiquityURL = %@", ubiquityURL);

            if ([[NSFileManager defaultManager] fileExistsAtPath:ubiquityURL.path]) {
                
                [[NSFileManager defaultManager] removeItemAtURL:ubiquityURL error:nil];
            }
            
            // And finish up the 'store' action
            NSError *error;
            if (![[NSFileManager defaultManager] setUbiquitous:YES itemAtURL:localURL destinationURL:ubiquityURL error:&error]) {
                NSLog(@"Error occurred: %@", error);
            }
        }
        else {
            NSLog(@"Could not retrieve a ubiquityURL");
        }
    }];
}

+(void)rootDirectoryForICloud:(void (^)(NSURL *))completionHandler {

    NSString *strDate = [[NSUserDefaults standardUserDefaults] valueForKey:@"strDate"];
    NSString *lastName = [[NSUserDefaults standardUserDefaults] valueForKey:@"lastName"];

    NSString *strName = [strDate stringByAppendingFormat:@" %@",lastName];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSURL *rootDirectory = [[[[NSFileManager defaultManager] URLForUbiquityContainerIdentifier:@"iCloud.HumanResourceSolutions.app"]URLByAppendingPathComponent:@"Documents"] URLByAppendingPathComponent:strName];
//        NSURL *rootDirectory = [[[[NSFileManager defaultManager] URLForUbiquityContainerIdentifier:@"iCloud.com.nextdaysoft.test"]URLByAppendingPathComponent:@"Documents"] URLByAppendingPathComponent:strName];

        if (rootDirectory) {
            if (![[NSFileManager defaultManager] fileExistsAtPath:rootDirectory.path isDirectory:nil]) {
                NSLog(@"Create directory");
                [[NSFileManager defaultManager] createDirectoryAtURL:rootDirectory withIntermediateDirectories:YES attributes:nil error:nil];
            }
        }

        dispatch_async(dispatch_get_main_queue(), ^{
            completionHandler(rootDirectory);
        });
    });
}

+(NSURL *)localPathForResource:(NSString *)resource ofType:(NSString *)type {
   
    NSString *documentsDirectory = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
  
    NSString *resourcePath = [[documentsDirectory stringByAppendingPathComponent:resource] stringByAppendingPathExtension:type];
        
    return [NSURL fileURLWithPath:resourcePath];
}


@end
