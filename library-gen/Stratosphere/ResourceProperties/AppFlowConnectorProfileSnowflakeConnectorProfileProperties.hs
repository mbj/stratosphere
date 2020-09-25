{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html

module Stratosphere.ResourceProperties.AppFlowConnectorProfileSnowflakeConnectorProfileProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppFlowConnectorProfileSnowflakeConnectorProfileProperties. See
-- 'appFlowConnectorProfileSnowflakeConnectorProfileProperties' for a more
-- convenient constructor.
data AppFlowConnectorProfileSnowflakeConnectorProfileProperties =
  AppFlowConnectorProfileSnowflakeConnectorProfileProperties
  { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesAccountName :: Maybe (Val Text)
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketName :: Val Text
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketPrefix :: Maybe (Val Text)
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesPrivateLinkServiceName :: Maybe (Val Text)
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesRegion :: Maybe (Val Text)
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesStage :: Val Text
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesWarehouse :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowConnectorProfileSnowflakeConnectorProfileProperties where
  toJSON AppFlowConnectorProfileSnowflakeConnectorProfileProperties{..} =
    object $
    catMaybes
    [ fmap (("AccountName",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesAccountName
    , (Just . ("BucketName",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketName
    , fmap (("BucketPrefix",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketPrefix
    , fmap (("PrivateLinkServiceName",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesPrivateLinkServiceName
    , fmap (("Region",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesRegion
    , (Just . ("Stage",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesStage
    , (Just . ("Warehouse",) . toJSON) _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesWarehouse
    ]

-- | Constructor for
-- 'AppFlowConnectorProfileSnowflakeConnectorProfileProperties' containing
-- required fields as arguments.
appFlowConnectorProfileSnowflakeConnectorProfileProperties
  :: Val Text -- ^ 'afcpscppBucketName'
  -> Val Text -- ^ 'afcpscppStage'
  -> Val Text -- ^ 'afcpscppWarehouse'
  -> AppFlowConnectorProfileSnowflakeConnectorProfileProperties
appFlowConnectorProfileSnowflakeConnectorProfileProperties bucketNamearg stagearg warehousearg =
  AppFlowConnectorProfileSnowflakeConnectorProfileProperties
  { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesAccountName = Nothing
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketName = bucketNamearg
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketPrefix = Nothing
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesPrivateLinkServiceName = Nothing
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesRegion = Nothing
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesStage = stagearg
  , _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesWarehouse = warehousearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-accountname
afcpscppAccountName :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Maybe (Val Text))
afcpscppAccountName = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesAccountName (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesAccountName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-bucketname
afcpscppBucketName :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Val Text)
afcpscppBucketName = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketName (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-bucketprefix
afcpscppBucketPrefix :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Maybe (Val Text))
afcpscppBucketPrefix = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketPrefix (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-privatelinkservicename
afcpscppPrivateLinkServiceName :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Maybe (Val Text))
afcpscppPrivateLinkServiceName = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesPrivateLinkServiceName (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesPrivateLinkServiceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-region
afcpscppRegion :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Maybe (Val Text))
afcpscppRegion = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesRegion (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-stage
afcpscppStage :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Val Text)
afcpscppStage = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesStage (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesStage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-snowflakeconnectorprofileproperties.html#cfn-appflow-connectorprofile-snowflakeconnectorprofileproperties-warehouse
afcpscppWarehouse :: Lens' AppFlowConnectorProfileSnowflakeConnectorProfileProperties (Val Text)
afcpscppWarehouse = lens _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesWarehouse (\s a -> s { _appFlowConnectorProfileSnowflakeConnectorProfilePropertiesWarehouse = a })
