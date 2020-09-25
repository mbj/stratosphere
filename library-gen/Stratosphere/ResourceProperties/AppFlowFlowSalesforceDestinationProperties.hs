{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcedestinationproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSalesforceDestinationProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowErrorHandlingConfig

-- | Full data type definition for AppFlowFlowSalesforceDestinationProperties.
-- See 'appFlowFlowSalesforceDestinationProperties' for a more convenient
-- constructor.
data AppFlowFlowSalesforceDestinationProperties =
  AppFlowFlowSalesforceDestinationProperties
  { _appFlowFlowSalesforceDestinationPropertiesErrorHandlingConfig :: Maybe AppFlowFlowErrorHandlingConfig
  , _appFlowFlowSalesforceDestinationPropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSalesforceDestinationProperties where
  toJSON AppFlowFlowSalesforceDestinationProperties{..} =
    object $
    catMaybes
    [ fmap (("ErrorHandlingConfig",) . toJSON) _appFlowFlowSalesforceDestinationPropertiesErrorHandlingConfig
    , (Just . ("Object",) . toJSON) _appFlowFlowSalesforceDestinationPropertiesObject
    ]

-- | Constructor for 'AppFlowFlowSalesforceDestinationProperties' containing
-- required fields as arguments.
appFlowFlowSalesforceDestinationProperties
  :: Val Text -- ^ 'affsdpObject'
  -> AppFlowFlowSalesforceDestinationProperties
appFlowFlowSalesforceDestinationProperties objectarg =
  AppFlowFlowSalesforceDestinationProperties
  { _appFlowFlowSalesforceDestinationPropertiesErrorHandlingConfig = Nothing
  , _appFlowFlowSalesforceDestinationPropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcedestinationproperties.html#cfn-appflow-flow-salesforcedestinationproperties-errorhandlingconfig
affsdpErrorHandlingConfig :: Lens' AppFlowFlowSalesforceDestinationProperties (Maybe AppFlowFlowErrorHandlingConfig)
affsdpErrorHandlingConfig = lens _appFlowFlowSalesforceDestinationPropertiesErrorHandlingConfig (\s a -> s { _appFlowFlowSalesforceDestinationPropertiesErrorHandlingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcedestinationproperties.html#cfn-appflow-flow-salesforcedestinationproperties-object
affsdpObject :: Lens' AppFlowFlowSalesforceDestinationProperties (Val Text)
affsdpObject = lens _appFlowFlowSalesforceDestinationPropertiesObject (\s a -> s { _appFlowFlowSalesforceDestinationPropertiesObject = a })
