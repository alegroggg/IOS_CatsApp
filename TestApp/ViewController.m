//
//  ViewController.m
//  TestApp
//
//  Created by vm mac on 04/08/2016.
//  Copyright © 2016 vm mac. All rights reserved.
//

#import "ViewController.h"
#import "Cat.h"
#import "CatDetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *TabView;
@property (strong, nonatomic) IBOutlet UIRefreshControl *refreshControl;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_TabView setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
    
    _arrayItems = [[NSMutableArray alloc] init];
    
    Cat * cat = [[Cat alloc] init];
    cat.name = @"Kitty";
    cat.imageName = @"cat1.jpg";
    cat.desc = @"desc";
    
    Cat * cat2 = [[Cat alloc] init];
    cat2.name = @"SomeKitty";
    cat2.imageName = @"cat3.JPG";
    cat2.desc = @"desc2";
    
    Cat * cat3 = [[Cat alloc] init];
    cat3.name = @"Miau";
    cat3.imageName = @"cat4.jpg";
    cat3.desc = @"desc2";
    
    [_arrayItems addObject:cat];
    [_arrayItems addObject:cat2];
    [_arrayItems addObject:cat3];
    
    _refreshControl = [[UIRefreshControl alloc] init];
    [_refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    [_TabView addSubview:_refreshControl];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [_refreshControl beginRefreshing];
    [_refreshControl endRefreshing];
}

-(void)refresh:(id)sender
{
    Cat * cat2 = [[Cat alloc] init];
    cat2.name = @"SomeKitty";
    cat2.imageName = @"cat3.JPG";
    cat2.desc = @"desc2";
    [_arrayItems addObject:cat2];
    [_TabView reloadData];
    
    [(UIRefreshControl*)sender endRefreshing];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swich:(id)sender {
    
    if(_swichProp.on == true)
    {
        _textLabel.text = @"On";

    }
    else
    {
        _textLabel.text = @"Off";
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Cat * someKitty = [_arrayItems objectAtIndex:indexPath.row];
    cell.textLabel.text = someKitty.name;
    
  
    
    cell.imageView.image = [UIImage imageNamed:someKitty.imageName];
    cell.imageView.frame =CGRectMake(0, 0, 50, 50);
    cell.imageView.layer.cornerRadius = 25;
    cell.imageView.layer.masksToBounds = true;
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // some code to resize
    CGSize itemSize = CGSizeMake(50, 50);
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier  isEqual: @"CatDescIdent"])
    {
        NSIndexPath * indexPath =  _TabView.indexPathForSelectedRow;
        CatDetailViewController * descControler = segue.destinationViewController;
        Cat * kitty = [_arrayItems objectAtIndex:indexPath.row];
    
        descControler.Name = kitty.name;
        descControler.Desc = kitty.desc;
        descControler.Image = kitty.imageName;
        
    }
}


@end
