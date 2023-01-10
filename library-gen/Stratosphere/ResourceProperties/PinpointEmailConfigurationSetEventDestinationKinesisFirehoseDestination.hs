
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination.
-- See
-- 'pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination'
-- for a more convenient constructor.
data PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination =
  PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
  { _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamArn :: Val Text
  , _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationIamRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination where
  toJSON PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination{..} =
    object $
    catMaybes
    [ (Just . ("DeliveryStreamArn",) . toJSON) _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamArn
    , (Just . ("IamRoleArn",) . toJSON) _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationIamRoleArn
    ]

-- | Constructor for
-- 'PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination'
-- containing required fields as arguments.
pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
  :: Val Text -- ^ 'pecsedkfdDeliveryStreamArn'
  -> Val Text -- ^ 'pecsedkfdIamRoleArn'
  -> PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination deliveryStreamArnarg iamRoleArnarg =
  PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination
  { _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamArn = deliveryStreamArnarg
  , _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationIamRoleArn = iamRoleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
pecsedkfdDeliveryStreamArn :: Lens' PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination (Val Text)
pecsedkfdDeliveryStreamArn = lens _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamArn (\s a -> s { _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
pecsedkfdIamRoleArn :: Lens' PinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination (Val Text)
pecsedkfdIamRoleArn = lens _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationIamRoleArn (\s a -> s { _pinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestinationIamRoleArn = a })
