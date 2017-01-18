{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-deliverychannel-configsnapshotdeliveryproperties.html

module Stratosphere.ResourceProperties.ConfigDeliveryChannelConfigSnapshotDeliveryProperties where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ConfigDeliveryChannelConfigSnapshotDeliveryProperties. See
-- | 'configDeliveryChannelConfigSnapshotDeliveryProperties' for a more
-- | convenient constructor.
data ConfigDeliveryChannelConfigSnapshotDeliveryProperties =
  ConfigDeliveryChannelConfigSnapshotDeliveryProperties
  { _configDeliveryChannelConfigSnapshotDeliveryPropertiesDeliveryFrequency :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

instance FromJSON ConfigDeliveryChannelConfigSnapshotDeliveryProperties where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 54, omitNothingFields = True }

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
