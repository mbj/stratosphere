
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationSnsDestination where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationSnsDestination. See
-- 'pinpointEmailConfigurationSetEventDestinationSnsDestination' for a more
-- convenient constructor.
data PinpointEmailConfigurationSetEventDestinationSnsDestination =
  PinpointEmailConfigurationSetEventDestinationSnsDestination
  { _pinpointEmailConfigurationSetEventDestinationSnsDestinationTopicArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationSnsDestination where
  toJSON PinpointEmailConfigurationSetEventDestinationSnsDestination{..} =
    object $
    catMaybes
    [ (Just . ("TopicArn",) . toJSON) _pinpointEmailConfigurationSetEventDestinationSnsDestinationTopicArn
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationSnsDestination' containing
-- required fields as arguments.
pinpointEmailConfigurationSetEventDestinationSnsDestination
  :: Val Text -- ^ 'pecsedsdTopicArn'
  -> PinpointEmailConfigurationSetEventDestinationSnsDestination
pinpointEmailConfigurationSetEventDestinationSnsDestination topicArnarg =
  PinpointEmailConfigurationSetEventDestinationSnsDestination
  { _pinpointEmailConfigurationSetEventDestinationSnsDestinationTopicArn = topicArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html#cfn-pinpointemail-configurationseteventdestination-snsdestination-topicarn
pecsedsdTopicArn :: Lens' PinpointEmailConfigurationSetEventDestinationSnsDestination (Val Text)
pecsedsdTopicArn = lens _pinpointEmailConfigurationSetEventDestinationSnsDestinationTopicArn (\s a -> s { _pinpointEmailConfigurationSetEventDestinationSnsDestinationTopicArn = a })
