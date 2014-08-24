//
//  TMMessageView.m
//  MessageChat
//
//  Created by Tuan Pham on 6/4/14.
//  Copyright (c) 2014 Tuan Pham. All rights reserved.
//

#import "DDContactListView.h"
#import <AddressBook/AddressBook.h>
#import <AddressBook/ABAddressBook.h>
#import <AddressBook/ABPerson.h>

@implementation DDContactListView
{
    IBOutlet UITableView *tblContact;
}
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"DDContactListView" owner:self options:nil] firstObject];
    if (self) {
    
        [self getAllContact];
    }
    return self;
}

-(IBAction)doneClick:(id)sender
{
    [self endEditing:YES];
    if (self.delegate && [self.delegate respondsToSelector:@selector(doneNewMessage)]) {
        [self.delegate doneNewMessage];
    }
}

-(void)getAllContact
{
    
    ABAddressBookRef addressBook = ABAddressBookCreate();
    CFArrayRef all = ABAddressBookCopyArrayOfAllPeople(addressBook);
    CFIndex n = ABAddressBookGetPersonCount(addressBook);
    
    for( int i = 0 ; i < n ; i++ )
    {
        ABRecordRef ref = CFArrayGetValueAtIndex(all, i);
        NSString *firstName = (NSString *)CFBridgingRelease(ABRecordCopyValue(ref, kABPersonFirstNameProperty));
        NSLog(@"Name %@", firstName);
        
        ABMultiValueRef phones = ABRecordCopyValue(ref, kABPersonPhoneProperty);
        for(CFIndex j = 0; j < ABMultiValueGetCount(phones); j++)
        {
            CFStringRef phoneNumberRef = ABMultiValueCopyValueAtIndex(phones, j);
            CFStringRef locLabel = ABMultiValueCopyLabelAtIndex(phones, j);
            NSString *phoneLabel =(NSString*) CFBridgingRelease(ABAddressBookCopyLocalizedLabel(locLabel));
            //CFRelease(phones);
            NSString *phoneNumber = (NSString *)CFBridgingRelease(phoneNumberRef);
            CFRelease(phoneNumberRef);
            CFRelease(locLabel);
            NSLog(@"  - %@ (%@)", phoneNumber, phoneLabel);
        }
    }
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self endEditing:YES];
}


#pragma mark-TextViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *deque = @"Cell";
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:deque];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:deque];
    }
    
    cell.textLabel.text = @"UserName";
    
    return cell;
}
@end
