//
//  NSManagedObject+NewObject.m
//  LionsClub
//
//  Created by Luka Gabric on 3/18/13.
//
//


#import "NSManagedObject+NewObject.h"
#import "DataController.h"


@implementation NSManagedObject (NewObject)


+ (id)newManagedObjectInContext:(NSManagedObjectContext *)context
{
    id managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(self) inManagedObjectContext:context];
    
    return managedObject;
}


+ (id)newManagedObject
{
    id managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(self) inManagedObjectContext:dataContext];
    
    return managedObject;
}


@end