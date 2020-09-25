{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileRedshiftConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileRedshiftConnectorProfileProperties. See
-- 'appFlowConnectorProfileRedshiftConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileRedshiftConnectorProfileProperties =
  AppFlowConnectorProfileRedshiftConnectorProfileProperties
  { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketName :: Val Text
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketPrefix :: Maybe (Val Text)
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesDatabaseUrl :: Val Text
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileRedshiftConnectorProfileProperties where
  toJSON AppFlowConnectorProfileRedshiftConnectorProfileProperties{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketName
    , fmap (("BucketPrefix",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketPrefix
    , (Just . ("DatabaseUrl",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfilePropertiesDatabaseUrl
    , (Just . ("RoleArn",) . toJSON) _appFlowConnectorProfileRedshiftConnectorProfilePropertiesRoleArn
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileRedshiftConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileRedshiftConnectorProfileProperties
  :: Val Text -- ^ 'afcprcppBucketName'
  -> Val Text -- ^ 'afcprcppDatabaseUrl'
  -> Val Text -- ^ 'afcprcppRoleArn'
  -> AppFlowConnectorProfileRedshiftConnectorProfileProperties
appFlowConnectorProfileRedshiftConnectorProfileProperties bucketNamearg databaseUrlarg roleArnarg =
  AppFlowConnectorProfileRedshiftConnectorProfileProperties
  { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketName = bucketNamearg
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketPrefix = Nothing
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesDatabaseUrl = databaseUrlarg
  , _appFlowConnectorProfileRedshiftConnectorProfilePropertiesRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-bucketname
afcprcppBucketName :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileProperties (Val Text)
afcprcppBucketName = lens _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketName (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-bucketprefix
afcprcppBucketPrefix :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileProperties (Maybe (Val Text))
afcprcppBucketPrefix = lens _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketPrefix (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-databaseurl
afcprcppDatabaseUrl :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileProperties (Val Text)
afcprcppDatabaseUrl = lens _appFlowConnectorProfileRedshiftConnectorProfilePropertiesDatabaseUrl (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesDatabaseUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-redshiftconnectorprofileproperties.html#cfn-appflow-connectorprofile-redshiftconnectorprofileproperties-rolearn
afcprcppRoleArn :: Lens' AppFlowConnectorProfileRedshiftConnectorProfileProperties (Val Text)
afcprcppRoleArn = lens _appFlowConnectorProfileRedshiftConnectorProfilePropertiesRoleArn (\s a -> s { _appFlowConnectorProfileRedshiftConnectorProfilePropertiesRoleArn = a })
