{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html

module Stratosphere.Resources.ConfigAggregationAuthorization where

import Stratosphere.ResourceImports


-- | Full data type definition for ConfigAggregationAuthorization. See
-- 'configAggregationAuthorization' for a more convenient constructor.
data ConfigAggregationAuthorization =
  ConfigAggregationAuthorization
  { _configAggregationAuthorizationAuthorizedAccountId :: Val Text
  , _configAggregationAuthorizationAuthorizedAwsRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigAggregationAuthorization where
  toJSON ConfigAggregationAuthorization{..} =
    object $
    catMaybes
    [ (Just . ("AuthorizedAccountId",) . toJSON) _configAggregationAuthorizationAuthorizedAccountId
    , (Just . ("AuthorizedAwsRegion",) . toJSON) _configAggregationAuthorizationAuthorizedAwsRegion
    ]

-- | Constructor for 'ConfigAggregationAuthorization' containing required
-- fields as arguments.
configAggregationAuthorization
  :: Val Text -- ^ 'caaAuthorizedAccountId'
  -> Val Text -- ^ 'caaAuthorizedAwsRegion'
  -> ConfigAggregationAuthorization
configAggregationAuthorization authorizedAccountIdarg authorizedAwsRegionarg =
  ConfigAggregationAuthorization
  { _configAggregationAuthorizationAuthorizedAccountId = authorizedAccountIdarg
  , _configAggregationAuthorizationAuthorizedAwsRegion = authorizedAwsRegionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid
caaAuthorizedAccountId :: Lens' ConfigAggregationAuthorization (Val Text)
caaAuthorizedAccountId = lens _configAggregationAuthorizationAuthorizedAccountId (\s a -> s { _configAggregationAuthorizationAuthorizedAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion
caaAuthorizedAwsRegion :: Lens' ConfigAggregationAuthorization (Val Text)
caaAuthorizedAwsRegion = lens _configAggregationAuthorizationAuthorizedAwsRegion (\s a -> s { _configAggregationAuthorizationAuthorizedAwsRegion = a })
