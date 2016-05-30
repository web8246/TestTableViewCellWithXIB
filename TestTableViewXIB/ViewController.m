//
//  ViewController.m
//  TestTableViewXIB
//
//  Created by dean on 2016/5/30.
//  Copyright © 2016年 dean. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@property (nonatomic ,strong) NSArray *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    UINib* myCellNib = [UINib nibWithNibName:@"MyCell" bundle:nil];
    [self.myTableView registerNib:myCellNib forCellReuseIdentifier:@"myCell"];
    self.list = [NSArray arrayWithObjects:@"saf",@"df",@"ggg", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"ViewController" bundle:[NSBundle mainBundle]];
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCell* cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    cell.label1.text = [self.list objectAtIndex:indexPath.row];
//    cell.titleLabel.text = [NSString stringWithFormat:@"t-%d", indexPath.row];
//    cell.indexLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];
    
    return cell;
}

@end
