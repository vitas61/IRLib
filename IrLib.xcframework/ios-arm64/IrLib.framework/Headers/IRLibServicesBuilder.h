//
//  IRLibServicesBuilder.h
//  IrLib
//
//  Created by Alexander Shmakov on 13.07.2020.
//  Copyright © 2020 Intelligence Retail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AiletFeatureToggle.h"

@class Api;
@class IrCore;
@class CatalogNetworkService;
@class ModelIR;
@protocol IRStoreService;
@protocol IRVisitModel;

NS_ASSUME_NONNULL_BEGIN

@interface IRLibServicesBuilder : NSObject

+ (instancetype)shared;

+ (IRStoredStateSettings *)swiftLibStoredStateSettings;
+ (IRDataManagerSettings *)swiftLibSettings;
+ (IRDataManager *)swiftLibDataManager;

- (IrCore *)irCore;
- (IrCore *)irCoreWithParent:(id)parent isSeparated:(BOOL)isSeparated;
- (id<IRStoreService>)storeService;
- (CatalogNetworkService *)catalogNetworkService;
- (Api *)api;
- (id<IRVisitModel>)visitModel;
- (ModelIR *)legacyModel;

@end

NS_ASSUME_NONNULL_END
