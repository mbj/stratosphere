{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelIotSiteWise where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelAssetPropertyValue

-- | Full data type definition for IoTEventsDetectorModelIotSiteWise. See
-- 'ioTEventsDetectorModelIotSiteWise' for a more convenient constructor.
data IoTEventsDetectorModelIotSiteWise =
  IoTEventsDetectorModelIotSiteWise
  { _ioTEventsDetectorModelIotSiteWiseAssetId :: Maybe (Val Text)
  , _ioTEventsDetectorModelIotSiteWiseEntryId :: Maybe (Val Text)
  , _ioTEventsDetectorModelIotSiteWisePropertyAlias :: Maybe (Val Text)
  , _ioTEventsDetectorModelIotSiteWisePropertyId :: Maybe (Val Text)
  , _ioTEventsDetectorModelIotSiteWisePropertyValue :: Maybe IoTEventsDetectorModelAssetPropertyValue
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelIotSiteWise where
  toJSON IoTEventsDetectorModelIotSiteWise{..} =
    object $
    catMaybes
    [ fmap (("AssetId",) . toJSON) _ioTEventsDetectorModelIotSiteWiseAssetId
    , fmap (("EntryId",) . toJSON) _ioTEventsDetectorModelIotSiteWiseEntryId
    , fmap (("PropertyAlias",) . toJSON) _ioTEventsDetectorModelIotSiteWisePropertyAlias
    , fmap (("PropertyId",) . toJSON) _ioTEventsDetectorModelIotSiteWisePropertyId
    , fmap (("PropertyValue",) . toJSON) _ioTEventsDetectorModelIotSiteWisePropertyValue
    ]

-- | Constructor for 'IoTEventsDetectorModelIotSiteWise' containing required
-- fields as arguments.
ioTEventsDetectorModelIotSiteWise
  :: IoTEventsDetectorModelIotSiteWise
ioTEventsDetectorModelIotSiteWise  =
  IoTEventsDetectorModelIotSiteWise
  { _ioTEventsDetectorModelIotSiteWiseAssetId = Nothing
  , _ioTEventsDetectorModelIotSiteWiseEntryId = Nothing
  , _ioTEventsDetectorModelIotSiteWisePropertyAlias = Nothing
  , _ioTEventsDetectorModelIotSiteWisePropertyId = Nothing
  , _ioTEventsDetectorModelIotSiteWisePropertyValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html#cfn-iotevents-detectormodel-iotsitewise-assetid
itedmiswAssetId :: Lens' IoTEventsDetectorModelIotSiteWise (Maybe (Val Text))
itedmiswAssetId = lens _ioTEventsDetectorModelIotSiteWiseAssetId (\s a -> s { _ioTEventsDetectorModelIotSiteWiseAssetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html#cfn-iotevents-detectormodel-iotsitewise-entryid
itedmiswEntryId :: Lens' IoTEventsDetectorModelIotSiteWise (Maybe (Val Text))
itedmiswEntryId = lens _ioTEventsDetectorModelIotSiteWiseEntryId (\s a -> s { _ioTEventsDetectorModelIotSiteWiseEntryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html#cfn-iotevents-detectormodel-iotsitewise-propertyalias
itedmiswPropertyAlias :: Lens' IoTEventsDetectorModelIotSiteWise (Maybe (Val Text))
itedmiswPropertyAlias = lens _ioTEventsDetectorModelIotSiteWisePropertyAlias (\s a -> s { _ioTEventsDetectorModelIotSiteWisePropertyAlias = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html#cfn-iotevents-detectormodel-iotsitewise-propertyid
itedmiswPropertyId :: Lens' IoTEventsDetectorModelIotSiteWise (Maybe (Val Text))
itedmiswPropertyId = lens _ioTEventsDetectorModelIotSiteWisePropertyId (\s a -> s { _ioTEventsDetectorModelIotSiteWisePropertyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotsitewise.html#cfn-iotevents-detectormodel-iotsitewise-propertyvalue
itedmiswPropertyValue :: Lens' IoTEventsDetectorModelIotSiteWise (Maybe IoTEventsDetectorModelAssetPropertyValue)
itedmiswPropertyValue = lens _ioTEventsDetectorModelIotSiteWisePropertyValue (\s a -> s { _ioTEventsDetectorModelIotSiteWisePropertyValue = a })
