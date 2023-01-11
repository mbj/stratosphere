
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationPinpointDestination where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationPinpointDestination. See
-- 'pinpointEmailConfigurationSetEventDestinationPinpointDestination' for a
-- more convenient constructor.
data PinpointEmailConfigurationSetEventDestinationPinpointDestination =
  PinpointEmailConfigurationSetEventDestinationPinpointDestination
  { _pinpointEmailConfigurationSetEventDestinationPinpointDestinationApplicationArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationPinpointDestination where
  toJSON PinpointEmailConfigurationSetEventDestinationPinpointDestination{..} =
    object $
    catMaybes
    [ fmap (("ApplicationArn",) . toJSON) _pinpointEmailConfigurationSetEventDestinationPinpointDestinationApplicationArn
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationPinpointDestination'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestinationPinpointDestination
  :: PinpointEmailConfigurationSetEventDestinationPinpointDestination
pinpointEmailConfigurationSetEventDestinationPinpointDestination  =
  PinpointEmailConfigurationSetEventDestinationPinpointDestination
  { _pinpointEmailConfigurationSetEventDestinationPinpointDestinationApplicationArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html#cfn-pinpointemail-configurationseteventdestination-pinpointdestination-applicationarn
pecsedpdApplicationArn :: Lens' PinpointEmailConfigurationSetEventDestinationPinpointDestination (Maybe (Val Text))
pecsedpdApplicationArn = lens _pinpointEmailConfigurationSetEventDestinationPinpointDestinationApplicationArn (\s a -> s { _pinpointEmailConfigurationSetEventDestinationPinpointDestinationApplicationArn = a })
