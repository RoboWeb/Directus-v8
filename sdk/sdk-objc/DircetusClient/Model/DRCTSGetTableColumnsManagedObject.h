#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

/**
* directus.io
* API for directus.io
*
* OpenAPI spec version: 1.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "DRCTSGetTableColumnsDataManagedObject.h"
#import "DRCTSGetTablesMetaManagedObject.h"


NS_ASSUME_NONNULL_BEGIN

@interface DRCTSGetTableColumnsManagedObject : NSManagedObject


@property (nullable, nonatomic, retain) DRCTSGetTablesMetaManagedObject* meta;

@property (nullable, nonatomic, retain) NSOrderedSet<DRCTSGetTableColumnsDataManagedObject*>* data;
@end

@interface DRCTSGetTableColumnsManagedObject (GeneratedAccessors)
- (void)addDataObject:(DRCTSGetTableColumnsDataManagedObject *)value;
- (void)removeDataObject:(DRCTSGetTableColumnsDataManagedObject *)value;
- (void)addData:(NSOrderedSet<DRCTSGetTableColumnsDataManagedObject*> *)values;
- (void)removeData:(NSOrderedSet<DRCTSGetTableColumnsDataManagedObject*> *)values;

@end


NS_ASSUME_NONNULL_END
