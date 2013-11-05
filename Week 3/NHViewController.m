//
//  NHViewController.m
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import "NHViewController.h"
#import "NHFakeStudent.h"
#import "NHStudentCell.h"
#import <MessageUI/MessageUI.h>
#import "NHPintrestActivity.h"

@interface NHViewController ()
< MFMailComposeViewControllerDelegate >

@end

@implementation NHViewController


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

- (void) studentDidLogout:(NSNotification*)notification {
 // update UI
}

#pragma mark - UITableView Data Source and Delegate

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [NHFakeStudent allFakeStudents].count;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
  return 3;
}

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  return [NSString stringWithFormat:@"%i", section];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NHStudentCell * cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell"];
  NSArray * students = [NHFakeStudent allFakeStudents];
  NHFakeStudent * student = students[indexPath.row];
  cell.nameLabel.text = student.name;
  cell.studentImageView.image = student.image;
//  cell.textLabel.text = student.name;
//  cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", indexPath.row];
//  
//  
  return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  NSArray * students = [NHFakeStudent allFakeStudents];
  NHFakeStudent * student = students[indexPath.row];
  NHPintrestActivity * pinterest = [[NHPintrestActivity alloc] init];
  UIActivityViewController * vc = [[UIActivityViewController alloc] initWithActivityItems:@[student.image, student.name] applicationActivities:@[pinterest]];
  [self presentViewController:vc
                     animated:YES
                   completion:^{
                     
                   }];
}

- (BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
  return YES;
}

- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return UITableViewCellEditingStyleDelete;
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSMutableArray * students = [NHFakeStudent allFakeStudents];
  [students removeObjectAtIndex:indexPath.row];
  [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
//  [tableView reloadData];
}

#pragma mark - Mail Compose Delegate

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
  [self dismissViewControllerAnimated:YES
                           completion:^{
                             
                           }];
}

@end
