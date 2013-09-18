//
//  MainViewController.h
//  NSSpain
//
//  Created by Xavier Jurado on 18/09/13.
//
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
