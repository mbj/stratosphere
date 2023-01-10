
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html

module Stratosphere.ResourceProperties.SESConfigurationSetEventDestinationKinesisFirehoseDestination where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SESConfigurationSetEventDestinationKinesisFirehoseDestination. See
-- 'sesConfigurationSetEventDestinationKinesisFirehoseDestination' for a
-- more convenient constructor.
data SESConfigurationSetEventDestinationKinesisFirehoseDestination =
  SESConfigurationSetEventDestinationKinesisFirehoseDestination
  { _sESConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamARN :: Val Text
  , _sESConfigurationSetEventDestinationKinesisFirehoseDestinationIAMRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON SESConfigurationSetEventDestinationKinesisFirehoseDestination where
  toJSON SESConfigurationSetEventDestinationKinesisFirehoseDestination{..} =
    object $
    catMaybes
    [ (Just . ("DeliveryStreamARN",) . toJSON) _sESConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamARN
    , (Just . ("IAMRoleARN",) . toJSON) _sESConfigurationSetEventDestinationKinesisFirehoseDestinationIAMRoleARN
    ]

-- | Constructor for
-- 'SESConfigurationSetEventDestinationKinesisFirehoseDestination'
-- containing required fields as arguments.
sesConfigurationSetEventDestinationKinesisFirehoseDestination
  :: Val Text -- ^ 'sescsedkfdDeliveryStreamARN'
  -> Val Text -- ^ 'sescsedkfdIAMRoleARN'
  -> SESConfigurationSetEventDestinationKinesisFirehoseDestination
sesConfigurationSetEventDestinationKinesisFirehoseDestination deliveryStreamARNarg iAMRoleARNarg =
  SESConfigurationSetEventDestinationKinesisFirehoseDestination
  { _sESConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamARN = deliveryStreamARNarg
  , _sESConfigurationSetEventDestinationKinesisFirehoseDestinationIAMRoleARN = iAMRoleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
sescsedkfdDeliveryStreamARN :: Lens' SESConfigurationSetEventDestinationKinesisFirehoseDestination (Val Text)
sescsedkfdDeliveryStreamARN = lens _sESConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamARN (\s a -> s { _sESConfigurationSetEventDestinationKinesisFirehoseDestinationDeliveryStreamARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
sescsedkfdIAMRoleARN :: Lens' SESConfigurationSetEventDestinationKinesisFirehoseDestination (Val Text)
sescsedkfdIAMRoleARN = lens _sESConfigurationSetEventDestinationKinesisFirehoseDestinationIAMRoleARN (\s a -> s { _sESConfigurationSetEventDestinationKinesisFirehoseDestinationIAMRoleARN = a })
