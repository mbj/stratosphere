{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowDestinationConnectorProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowEventBridgeDestinationProperties
import Stratosphere.ResourceProperties.AppFlowFlowRedshiftDestinationProperties
import Stratosphere.ResourceProperties.AppFlowFlowS3DestinationProperties
import Stratosphere.ResourceProperties.AppFlowFlowSalesforceDestinationProperties
import Stratosphere.ResourceProperties.AppFlowFlowSnowflakeDestinationProperties

-- | Full data type definition for AppFlowFlowDestinationConnectorProperties.
-- See 'appFlowFlowDestinationConnectorProperties' for a more convenient
-- constructor.
data AppFlowFlowDestinationConnectorProperties =
  AppFlowFlowDestinationConnectorProperties
  { _appFlowFlowDestinationConnectorPropertiesEventBridge :: Maybe AppFlowFlowEventBridgeDestinationProperties
  , _appFlowFlowDestinationConnectorPropertiesRedshift :: Maybe AppFlowFlowRedshiftDestinationProperties
  , _appFlowFlowDestinationConnectorPropertiesS3 :: Maybe AppFlowFlowS3DestinationProperties
  , _appFlowFlowDestinationConnectorPropertiesSalesforce :: Maybe AppFlowFlowSalesforceDestinationProperties
  , _appFlowFlowDestinationConnectorPropertiesSnowflake :: Maybe AppFlowFlowSnowflakeDestinationProperties
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowDestinationConnectorProperties where
  toJSON AppFlowFlowDestinationConnectorProperties{..} =
    object $
    catMaybes
    [ fmap (("EventBridge",) . toJSON) _appFlowFlowDestinationConnectorPropertiesEventBridge
    , fmap (("Redshift",) . toJSON) _appFlowFlowDestinationConnectorPropertiesRedshift
    , fmap (("S3",) . toJSON) _appFlowFlowDestinationConnectorPropertiesS3
    , fmap (("Salesforce",) . toJSON) _appFlowFlowDestinationConnectorPropertiesSalesforce
    , fmap (("Snowflake",) . toJSON) _appFlowFlowDestinationConnectorPropertiesSnowflake
    ]

-- | Constructor for 'AppFlowFlowDestinationConnectorProperties' containing
-- required fields as arguments.
appFlowFlowDestinationConnectorProperties
  :: AppFlowFlowDestinationConnectorProperties
appFlowFlowDestinationConnectorProperties  =
  AppFlowFlowDestinationConnectorProperties
  { _appFlowFlowDestinationConnectorPropertiesEventBridge = Nothing
  , _appFlowFlowDestinationConnectorPropertiesRedshift = Nothing
  , _appFlowFlowDestinationConnectorPropertiesS3 = Nothing
  , _appFlowFlowDestinationConnectorPropertiesSalesforce = Nothing
  , _appFlowFlowDestinationConnectorPropertiesSnowflake = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-eventbridge
affdcpEventBridge :: Lens' AppFlowFlowDestinationConnectorProperties (Maybe AppFlowFlowEventBridgeDestinationProperties)
affdcpEventBridge = lens _appFlowFlowDestinationConnectorPropertiesEventBridge (\s a -> s { _appFlowFlowDestinationConnectorPropertiesEventBridge = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-redshift
affdcpRedshift :: Lens' AppFlowFlowDestinationConnectorProperties (Maybe AppFlowFlowRedshiftDestinationProperties)
affdcpRedshift = lens _appFlowFlowDestinationConnectorPropertiesRedshift (\s a -> s { _appFlowFlowDestinationConnectorPropertiesRedshift = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-s3
affdcpS3 :: Lens' AppFlowFlowDestinationConnectorProperties (Maybe AppFlowFlowS3DestinationProperties)
affdcpS3 = lens _appFlowFlowDestinationConnectorPropertiesS3 (\s a -> s { _appFlowFlowDestinationConnectorPropertiesS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-salesforce
affdcpSalesforce :: Lens' AppFlowFlowDestinationConnectorProperties (Maybe AppFlowFlowSalesforceDestinationProperties)
affdcpSalesforce = lens _appFlowFlowDestinationConnectorPropertiesSalesforce (\s a -> s { _appFlowFlowDestinationConnectorPropertiesSalesforce = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-snowflake
affdcpSnowflake :: Lens' AppFlowFlowDestinationConnectorProperties (Maybe AppFlowFlowSnowflakeDestinationProperties)
affdcpSnowflake = lens _appFlowFlowDestinationConnectorPropertiesSnowflake (\s a -> s { _appFlowFlowDestinationConnectorPropertiesSnowflake = a })
