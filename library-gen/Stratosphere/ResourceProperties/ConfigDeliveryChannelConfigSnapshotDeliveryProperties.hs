{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html

module Stratosphere.ResourceProperties.ConfigDeliveryChannelConfigSnapshotDeliveryProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigDeliveryChannelConfigSnapshotDeliveryProperties. See
-- 'configDeliveryChannelConfigSnapshotDeliveryProperties' for a more
-- convenient constructor.
data ConfigDeliveryChannelConfigSnapshotDeliveryProperties =
  ConfigDeliveryChannelConfigSnapshotDeliveryProperties
  { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties where
  toJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties{..} =
    object $
    catMaybes
    [ fmap (("DeliveryFrequency",) . toJSON) _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency
    ]

-- | Constructor for 'ConfigDeliveryChannelConfigSnapshotDeliveryProperties'
-- containing required fields as arguments.
configDeliveryChannelConfigSnapshotDeliveryProperties
  :: ConfigDeliveryChannelConfigSnapshotDeliveryProperties
configDeliveryChannelConfigSnapshotDeliveryProperties  =
  ConfigDeliveryChannelConfigSnapshotDeliveryProperties
  { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties-deliveryfrequency
cdccsdpDeliveryFrequency :: Lens' ConfigDeliveryChannelConfigSnapshotDeliveryProperties (Maybe (Val Text))
cdccsdpDeliveryFrequency = lens _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency (\s a -> s { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency = a })
