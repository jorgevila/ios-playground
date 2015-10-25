//
//  AvisosPageViewController.m
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "AvisosPageViewController.h"
#import "AvisoViewController.h"
#import "Aviso.h"
@interface AvisosPageViewController ()

@end

@implementation AvisosPageViewController

@synthesize avisos;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Aviso *avs1 = [Aviso new];
    avs1.title = @"Aviso 1";
    avs1.description = @"Tortillas de patata en caminos a mitad de precio.";
    
    Aviso *avs2 = [Aviso new];
    avs2.title = @"Aviso 2";
    avs2.description = @"Aprobado general en Agrónomos.";
    
    Aviso *avs3 = [Aviso new];
    avs3.title = @"Aviso 3";
    avs3.description = @"Cursos de yoga en INEF.";
    
    avisos = [NSArray arrayWithObjects:avs1, avs2, avs3, nil];
    
    // Create page view controller
    self.dataSource = self;
    
    AvisoViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    /*self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    [self addChildViewController:startingViewController];
    [self.view addSubview:startingViewController.view];
    [self didMoveToParentViewController:self];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((AvisoViewController*) viewController).index;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((AvisoViewController*) viewController).index;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index >= [self.avisos count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (AvisoViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.avisos count] == 0) || (index >= [self.avisos count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    AvisoViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AvisoViewController"];
    Aviso *aviso = self.avisos[index];
    pageContentViewController.titleText = aviso.title;
    pageContentViewController.descriptionText = aviso.description;
    pageContentViewController.index = index;
    pageContentViewController.pageControl.numberOfPages = [self.avisos count];
    pageContentViewController.pageControl.currentPage = index;
    return pageContentViewController;
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.avisos count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}


@end
