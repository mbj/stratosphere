{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyValue where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyTimestamp
import Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyVariant

-- | Full data type definition for IoTEventsDetectorModelAssetPropertyValue.
-- See 'ioTEventsDetectorModelAssetPropertyValue' for a more convenient
-- constructor.
data IoTEventsDetectorModelAssetPropertyValue =
  IoTEventsDetectorModelAssetPropertyValue
  { _ioTEventsDetectorModelAssetPropertyValueQuality :: Maybe (Val Text)
  , _ioTEventsDetectorModelAssetPropertyValueTimestamp :: Maybe IoTEventsDetectorModelAssetPropertyTimestamp
  , _ioTEventsDetectorModelAssetPropertyValueValue :: Maybe IoTEventsDetectorModelAssetPropertyVariant
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelAssetPropertyValue where
  toJSON IoTEventsDetectorModelAssetPropertyValue{..} =
    object $
    catMaybes
    [ fmap (("Quality",) . toJSON) _ioTEventsDetectorModelAssetPropertyValueQuality
    , fmap (("Timestamp",) . toJSON) _ioTEventsDetectorModelAssetPropertyValueTimestamp
    , fmap (("Value",) . toJSON) _ioTEventsDetectorModelAssetPropertyValueValue
    ]

-- | Constructor for 'IoTEventsDetectorModelAssetPropertyValue' containing
-- required fields as arguments.
ioTEventsDetectorModelAssetPropertyValue
  :: IoTEventsDetectorModelAssetPropertyValue
ioTEventsDetectorModelAssetPropertyValue  =
  IoTEventsDetectorModelAssetPropertyValue
  { _ioTEventsDetectorModelAssetPropertyValueQuality = Nothing
  , _ioTEventsDetectorModelAssetPropertyValueTimestamp = Nothing
  , _ioTEventsDetectorModelAssetPropertyValueValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-quality
itedmapvQuality :: Lens' IoTEventsDetectorModelAssetPropertyValue (Maybe (Val Text))
itedmapvQuality = lens _ioTEventsDetectorModelAssetPropertyValueQuality (\s a -> s { _ioTEventsDetectorModelAssetPropertyValueQuality = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-timestamp
itedmapvTimestamp :: Lens' IoTEventsDetectorModelAssetPropertyValue (Maybe IoTEventsDetectorModelAssetPropertyTimestamp)
itedmapvTimestamp = lens _ioTEventsDetectorModelAssetPropertyValueTimestamp (\s a -> s { _ioTEventsDetectorModelAssetPropertyValueTimestamp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-assetpropertyvalue.html#cfn-iotevents-detectormodel-assetpropertyvalue-value
itedmapvValue :: Lens' IoTEventsDetectorModelAssetPropertyValue (Maybe IoTEventsDetectorModelAssetPropertyVariant)
itedmapvValue = lens _ioTEventsDetectorModelAssetPropertyValueValue (\s a -> s { _ioTEventsDetectorModelAssetPropertyValueValue = a })
