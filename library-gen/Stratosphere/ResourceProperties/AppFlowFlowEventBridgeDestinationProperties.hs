{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowEventBridgeDestinationProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowErrorHandlingConfig

-- | Full data type definition for
-- AppFlowFlowEventBridgeDestinationProperties. See
-- 'appFlowFlowEventBridgeDestinationProperties' for a more convenient
-- constructor.
data AppFlowFlowEventBridgeDestinationProperties =
  AppFlowFlowEventBridgeDestinationProperties
  { _appFlowFlowEventBridgeDestinationPropertiesErrorHandlingConfig :: Maybe AppFlowFlowErrorHandlingConfig
  , _appFlowFlowEventBridgeDestinationPropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowEventBridgeDestinationProperties where
  toJSON AppFlowFlowEventBridgeDestinationProperties{..} =
    object $
    catMaybes
    [ fmap (("ErrorHandlingConfig",) . toJSON) _appFlowFlowEventBridgeDestinationPropertiesErrorHandlingConfig
    , (Just . ("Object",) . toJSON) _appFlowFlowEventBridgeDestinationPropertiesObject
    ]

-- | Constructor for 'AppFlowFlowEventBridgeDestinationProperties' containing
-- required fields as arguments.
appFlowFlowEventBridgeDestinationProperties
  :: Val Text -- ^ 'affebdpObject'
  -> AppFlowFlowEventBridgeDestinationProperties
appFlowFlowEventBridgeDestinationProperties objectarg =
  AppFlowFlowEventBridgeDestinationProperties
  { _appFlowFlowEventBridgeDestinationPropertiesErrorHandlingConfig = Nothing
  , _appFlowFlowEventBridgeDestinationPropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html#cfn-appflow-flow-eventbridgedestinationproperties-errorhandlingconfig
affebdpErrorHandlingConfig :: Lens' AppFlowFlowEventBridgeDestinationProperties (Maybe AppFlowFlowErrorHandlingConfig)
affebdpErrorHandlingConfig = lens _appFlowFlowEventBridgeDestinationPropertiesErrorHandlingConfig (\s a -> s { _appFlowFlowEventBridgeDestinationPropertiesErrorHandlingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-eventbridgedestinationproperties.html#cfn-appflow-flow-eventbridgedestinationproperties-object
affebdpObject :: Lens' AppFlowFlowEventBridgeDestinationProperties (Val Text)
affebdpObject = lens _appFlowFlowEventBridgeDestinationPropertiesObject (\s a -> s { _appFlowFlowEventBridgeDestinationPropertiesObject = a })
