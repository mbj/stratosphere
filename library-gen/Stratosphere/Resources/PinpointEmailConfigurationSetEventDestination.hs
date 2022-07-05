{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html

module Stratosphere.Resources.PinpointEmailConfigurationSetEventDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationEventDestination

-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestination. See
-- 'pinpointEmailConfigurationSetEventDestination' for a more convenient
-- constructor.
data PinpointEmailConfigurationSetEventDestination =
  PinpointEmailConfigurationSetEventDestination
  { _pinpointEmailConfigurationSetEventDestinationConfigurationSetName :: Val Text
  , _pinpointEmailConfigurationSetEventDestinationEventDestination :: Maybe PinpointEmailConfigurationSetEventDestinationEventDestination
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailConfigurationSetEventDestination where
  toResourceProperties PinpointEmailConfigurationSetEventDestination{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::PinpointEmail::ConfigurationSetEventDestination"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConfigurationSetName",) . toJSON) _pinpointEmailConfigurationSetEventDestinationConfigurationSetName
        , fmap (("EventDestination",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestination
        , (Just . ("EventDestinationName",) . toJSON) _pinpointEmailConfigurationSetEventDestinationEventDestinationName
        ]
    }

-- | Constructor for 'PinpointEmailConfigurationSetEventDestination'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestination
  :: Val Text -- ^ 'pecsedConfigurationSetName'
  -> Val Text -- ^ 'pecsedEventDestinationName'
  -> PinpointEmailConfigurationSetEventDestination
pinpointEmailConfigurationSetEventDestination configurationSetNamearg eventDestinationNamearg =
  PinpointEmailConfigurationSetEventDestination
  { _pinpointEmailConfigurationSetEventDestinationConfigurationSetName = configurationSetNamearg
  , _pinpointEmailConfigurationSetEventDestinationEventDestination = Nothing
  , _pinpointEmailConfigurationSetEventDestinationEventDestinationName = eventDestinationNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-configurationsetname
pecsedConfigurationSetName :: Lens' PinpointEmailConfigurationSetEventDestination (Val Text)
pecsedConfigurationSetName = lens _pinpointEmailConfigurationSetEventDestinationConfigurationSetName (\s a -> s { _pinpointEmailConfigurationSetEventDestinationConfigurationSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination
pecsedEventDestination :: Lens' PinpointEmailConfigurationSetEventDestination (Maybe PinpointEmailConfigurationSetEventDestinationEventDestination)
pecsedEventDestination = lens _pinpointEmailConfigurationSetEventDestinationEventDestination (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestinationname
pecsedEventDestinationName :: Lens' PinpointEmailConfigurationSetEventDestination (Val Text)
pecsedEventDestinationName = lens _pinpointEmailConfigurationSetEventDestinationEventDestinationName (\s a -> s { _pinpointEmailConfigurationSetEventDestinationEventDestinationName = a })
