//
//  FGTTimeTrackerViewController.m
//  TimeTracker
//
//  Created by FGT MAC on 10/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimeTrackerViewController.h"
#import "FGTTimedTaskController.h"

//in the interface with put any private property and the the outlets
@interface FGTTimeTrackerViewController ()

#pragma mark – Properties

@property (nonatomic) FGTTimedTaskController *timedTaskController;

#pragma mark – Oulets

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeTextField;



@end

@implementation FGTTimeTrackerViewController

#pragma mark – View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.timedTaskController =  [[FGTTimedTaskController alloc] init];
}

#pragma mark – Actions
- (IBAction)logTimeButton:(UIButton *)sender {
    [self saveData];
    
    
    
}

#pragma mark – Tableview methods
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimeLogCell" forIndexPath:indexPath];
    
    
    FGTTimedTask *task = [self.timedTaskController.timeTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = task.summary;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timeTasks.count;
}

#pragma mark – Custom methods / helpers

-(void)saveData{
    NSString *name = _nameTextField.text;
    NSString *summary = _summaryTextField.text;
    NSString *rate = _hoursTextField.text;
    NSString *hours = _timeTextField.text;
    
    
    //Create a new task
    [self.timedTaskController createTimedTaskWithClient:name summary:summary rate:rate hours:hours];
    
    [self updateViews];
}

-(void)updateViews{
    //Reload tableView
    [self.tableView reloadData];
    
    //Clear fields
    self.nameTextField.text = @"Fritz";
    self.summaryTextField.text = @"Work a lot";
    self.hoursTextField.text = @"50";
    self.timeTextField.text = @"40";
}

@end
