#import <Foundation/Foundation.h>
#import "DRCTSObject.h"

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


#import "DRCTSGetPreferencesData.h"
#import "DRCTSGetTablesMeta.h"
@protocol DRCTSGetPreferencesData;
@class DRCTSGetPreferencesData;
@protocol DRCTSGetTablesMeta;
@class DRCTSGetTablesMeta;



@protocol DRCTSGetPreferences
@end

@interface DRCTSGetPreferences : DRCTSObject


@property(nonatomic) DRCTSGetTablesMeta* meta;

@property(nonatomic) DRCTSGetPreferencesData* data;

@end
