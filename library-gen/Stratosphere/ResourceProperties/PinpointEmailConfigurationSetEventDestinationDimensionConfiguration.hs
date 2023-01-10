
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationDimensionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationDimensionConfiguration. See
-- 'pinpointEmailConfigurationSetEventDestinationDimensionConfiguration' for
-- a more convenient constructor.
data PinpointEmailConfigurationSetEventDestinationDimensionConfiguration =
  PinpointEmailConfigurationSetEventDestinationDimensionConfiguration
  { _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue :: Val Text
  , _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionName :: Val Text
  , _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationDimensionConfiguration where
  toJSON PinpointEmailConfigurationSetEventDestinationDimensionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DefaultDimensionValue",) . toJSON) _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue
    , (Just . ("DimensionName",) . toJSON) _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionName
    , (Just . ("DimensionValueSource",) . toJSON) _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationDimensionConfiguration'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestinationDimensionConfiguration
  :: Val Text -- ^ 'pecseddcDefaultDimensionValue'
  -> Val Text -- ^ 'pecseddcDimensionName'
  -> Val Text -- ^ 'pecseddcDimensionValueSource'
  -> PinpointEmailConfigurationSetEventDestinationDimensionConfiguration
pinpointEmailConfigurationSetEventDestinationDimensionConfiguration defaultDimensionValuearg dimensionNamearg dimensionValueSourcearg =
  PinpointEmailConfigurationSetEventDestinationDimensionConfiguration
  { _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue = defaultDimensionValuearg
  , _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionName = dimensionNamearg
  , _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource = dimensionValueSourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
pecseddcDefaultDimensionValue :: Lens' PinpointEmailConfigurationSetEventDestinationDimensionConfiguration (Val Text)
pecseddcDefaultDimensionValue = lens _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue (\s a -> s { _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDefaultDimensionValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionname
pecseddcDimensionName :: Lens' PinpointEmailConfigurationSetEventDestinationDimensionConfiguration (Val Text)
pecseddcDimensionName = lens _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionName (\s a -> s { _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
pecseddcDimensionValueSource :: Lens' PinpointEmailConfigurationSetEventDestinationDimensionConfiguration (Val Text)
pecseddcDimensionValueSource = lens _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource (\s a -> s { _pinpointEmailConfigurationSetEventDestinationDimensionConfigurationDimensionValueSource = a })
