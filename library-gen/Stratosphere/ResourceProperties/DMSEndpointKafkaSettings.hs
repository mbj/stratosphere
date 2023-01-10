
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html

module Stratosphere.ResourceProperties.DMSEndpointKafkaSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointKafkaSettings. See
-- 'dmsEndpointKafkaSettings' for a more convenient constructor.
data DMSEndpointKafkaSettings =
  DMSEndpointKafkaSettings
  { _dMSEndpointKafkaSettingsBroker :: Maybe (Val Text)
  , _dMSEndpointKafkaSettingsTopic :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointKafkaSettings where
  toJSON DMSEndpointKafkaSettings{..} =
    object $
    catMaybes
    [ fmap (("Broker",) . toJSON) _dMSEndpointKafkaSettingsBroker
    , fmap (("Topic",) . toJSON) _dMSEndpointKafkaSettingsTopic
    ]

-- | Constructor for 'DMSEndpointKafkaSettings' containing required fields as
-- arguments.
dmsEndpointKafkaSettings
  :: DMSEndpointKafkaSettings
dmsEndpointKafkaSettings  =
  DMSEndpointKafkaSettings
  { _dMSEndpointKafkaSettingsBroker = Nothing
  , _dMSEndpointKafkaSettingsTopic = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html#cfn-dms-endpoint-kafkasettings-broker
dmseksBroker :: Lens' DMSEndpointKafkaSettings (Maybe (Val Text))
dmseksBroker = lens _dMSEndpointKafkaSettingsBroker (\s a -> s { _dMSEndpointKafkaSettingsBroker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kafkasettings.html#cfn-dms-endpoint-kafkasettings-topic
dmseksTopic :: Lens' DMSEndpointKafkaSettings (Maybe (Val Text))
dmseksTopic = lens _dMSEndpointKafkaSettingsTopic (\s a -> s { _dMSEndpointKafkaSettingsTopic = a })
