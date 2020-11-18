

#import "DRCTSGetTablesMetaManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation DRCTSGetTablesMetaManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
    }
    return self;
}

-(DRCTSGetTablesMetaManagedObject*)createNewDRCTSGetTablesMetaManagedObjectInContext:(NSManagedObjectContext*)context {
    DRCTSGetTablesMetaManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([DRCTSGetTablesMetaManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(DRCTSGetTablesMetaManagedObject*)DRCTSGetTablesMetaManagedObjectFromDRCTSGetTablesMeta:(DRCTSGetTablesMeta*)object context:(NSManagedObjectContext*)context {
    DRCTSGetTablesMetaManagedObject* newDRCTSGetTablesMeta = [self createNewDRCTSGetTablesMetaManagedObjectInContext:context];
    [self updateDRCTSGetTablesMetaManagedObject:newDRCTSGetTablesMeta withDRCTSGetTablesMeta:object];
    return newDRCTSGetTablesMeta;
}

-(void)updateDRCTSGetTablesMetaManagedObject:(DRCTSGetTablesMetaManagedObject*)managedObject withDRCTSGetTablesMeta:(DRCTSGetTablesMeta*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;
    managedObject.type = [object.type copy];
    managedObject.table = [object.table copy];

}

-(DRCTSGetTablesMeta*)DRCTSGetTablesMetaFromDRCTSGetTablesMetaManagedObject:(DRCTSGetTablesMetaManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    DRCTSGetTablesMeta* newDRCTSGetTablesMeta = [[DRCTSGetTablesMeta alloc] init];
    [self updateDRCTSGetTablesMeta:newDRCTSGetTablesMeta withDRCTSGetTablesMetaManagedObject:obj];
    return newDRCTSGetTablesMeta;
}

-(void)updateDRCTSGetTablesMeta:(DRCTSGetTablesMeta*)newDRCTSGetTablesMeta withDRCTSGetTablesMetaManagedObject:(DRCTSGetTablesMetaManagedObject*)obj {
    newDRCTSGetTablesMeta.type = [obj.type copy];
    newDRCTSGetTablesMeta.table = [obj.table copy];
}

@end
