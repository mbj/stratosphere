{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html

module Stratosphere.ResourceProperties.ConfigDeliveryChannelConfigSnapshotDeliveryProperties where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ConfigDeliveryChannelConfigSnapshotDeliveryProperties. See
-- | 'configDeliveryChannelConfigSnapshotDeliveryProperties' for a more
-- | convenient constructor.
data ConfigDeliveryChannelConfigSnapshotDeliveryProperties =
  ConfigDeliveryChannelConfigSnapshotDeliveryProperties
  { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties where
  toJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties{..} =
    object
    [ "DeliveryFrequency" .= _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency
    ]

instance FromJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties where
  parseJSON (Object obj) =
    ConfigDeliveryChannelConfigSnapshotDeliveryProperties <$>
      obj .: "DeliveryFrequency"
  parseJSON _ = mempty

-- | Constructor for 'ConfigDeliveryChannelConfigSnapshotDeliveryProperties'
-- | containing required fields as arguments.
configDeliveryChannelConfigSnapshotDeliveryProperties
  :: ConfigDeliveryChannelConfigSnapshotDeliveryProperties
configDeliveryChannelConfigSnapshotDeliveryProperties  =
  ConfigDeliveryChannelConfigSnapshotDeliveryProperties
  { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties-deliveryfrequency
cdccsdpDeliveryFrequency :: Lens' ConfigDeliveryChannelConfigSnapshotDeliveryProperties (Maybe (Val Text))
cdccsdpDeliveryFrequency = lens _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency (\s a -> s { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency = a })
