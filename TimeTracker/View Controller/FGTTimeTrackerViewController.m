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

#pragma Properties

@property (nonatomic) FGTTimedTaskController *timedTaskController;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeTextField;



@end

@implementation FGTTimeTrackerViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.timedTaskController =  [[FGTTimedTaskController alloc] init];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)logTimeButton:(UIButton *)sender {
    NSString *name = _nameTextField.text;
    NSString *summary = _summaryTextField.text;
    NSString *rate = _hoursTextField.text;
    NSString *hours = _timeTextField.text;
    
    
    //Create a new task
    [_timedTaskController createTimedTaskWithClient:name summary:summary rate:rate hours:hours];
    
    //Reload tableView
    [self.tableView reloadData];
    
    //Clear fields
    self.nameTextField.text = @"Fritz";
    self.summaryTextField.text = @"Work a lot";
    self.hoursTextField.text = @"50";
    self.timeTextField.text = @"40";
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    
    FGTTimedTask *task = self.timedTaskController.timeTasks[indexPath.row];
    
    cell.largeContentTitle = task.client;
    cell.detailTextLabel.text = task.summary;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timeTasks.count;
}


@end
