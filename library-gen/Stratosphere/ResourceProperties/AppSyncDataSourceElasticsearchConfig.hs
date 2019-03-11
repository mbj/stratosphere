{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceElasticsearchConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceElasticsearchConfig. See
-- 'appSyncDataSourceElasticsearchConfig' for a more convenient constructor.
data AppSyncDataSourceElasticsearchConfig =
  AppSyncDataSourceElasticsearchConfig
  { _appSyncDataSourceElasticsearchConfigAwsRegion :: Val Text
  , _appSyncDataSourceElasticsearchConfigEndpoint :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceElasticsearchConfig where
  toJSON AppSyncDataSourceElasticsearchConfig{..} =
    object $
    catMaybes
    [ (Just . ("AwsRegion",) . toJSON) _appSyncDataSourceElasticsearchConfigAwsRegion
    , (Just . ("Endpoint",) . toJSON) _appSyncDataSourceElasticsearchConfigEndpoint
    ]

-- | Constructor for 'AppSyncDataSourceElasticsearchConfig' containing
-- required fields as arguments.
appSyncDataSourceElasticsearchConfig
  :: Val Text -- ^ 'asdsecAwsRegion'
  -> Val Text -- ^ 'asdsecEndpoint'
  -> AppSyncDataSourceElasticsearchConfig
appSyncDataSourceElasticsearchConfig awsRegionarg endpointarg =
  AppSyncDataSourceElasticsearchConfig
  { _appSyncDataSourceElasticsearchConfigAwsRegion = awsRegionarg
  , _appSyncDataSourceElasticsearchConfigEndpoint = endpointarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-awsregion
asdsecAwsRegion :: Lens' AppSyncDataSourceElasticsearchConfig (Val Text)
asdsecAwsRegion = lens _appSyncDataSourceElasticsearchConfigAwsRegion (\s a -> s { _appSyncDataSourceElasticsearchConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-elasticsearchconfig.html#cfn-appsync-datasource-elasticsearchconfig-endpoint
asdsecEndpoint :: Lens' AppSyncDataSourceElasticsearchConfig (Val Text)
asdsecEndpoint = lens _appSyncDataSourceElasticsearchConfigEndpoint (\s a -> s { _appSyncDataSourceElasticsearchConfigEndpoint = a })
