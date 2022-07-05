{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html

module Stratosphere.Resources.ConfigAggregationAuthorization where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ConfigAggregationAuthorization. See
-- 'configAggregationAuthorization' for a more convenient constructor.
data ConfigAggregationAuthorization =
  ConfigAggregationAuthorization
  { _configAggregationAuthorizationAuthorizedAccountId :: Val Text
  , _configAggregationAuthorizationAuthorizedAwsRegion :: Val Text
  , _configAggregationAuthorizationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ConfigAggregationAuthorization where
  toResourceProperties ConfigAggregationAuthorization{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::AggregationAuthorization"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AuthorizedAccountId",) . toJSON) _configAggregationAuthorizationAuthorizedAccountId
        , (Just . ("AuthorizedAwsRegion",) . toJSON) _configAggregationAuthorizationAuthorizedAwsRegion
        , fmap (("Tags",) . toJSON) _configAggregationAuthorizationTags
        ]
    }

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
  , _configAggregationAuthorizationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedaccountid
caaAuthorizedAccountId :: Lens' ConfigAggregationAuthorization (Val Text)
caaAuthorizedAccountId = lens _configAggregationAuthorizationAuthorizedAccountId (\s a -> s { _configAggregationAuthorizationAuthorizedAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-authorizedawsregion
caaAuthorizedAwsRegion :: Lens' ConfigAggregationAuthorization (Val Text)
caaAuthorizedAwsRegion = lens _configAggregationAuthorizationAuthorizedAwsRegion (\s a -> s { _configAggregationAuthorizationAuthorizedAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-aggregationauthorization.html#cfn-config-aggregationauthorization-tags
caaTags :: Lens' ConfigAggregationAuthorization (Maybe [Tag])
caaTags = lens _configAggregationAuthorizationTags (\s a -> s { _configAggregationAuthorizationTags = a })
