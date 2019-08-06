{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelIotEvents where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelIotEvents. See
-- 'ioTEventsDetectorModelIotEvents' for a more convenient constructor.
data IoTEventsDetectorModelIotEvents =
  IoTEventsDetectorModelIotEvents
  { _ioTEventsDetectorModelIotEventsInputName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelIotEvents where
  toJSON IoTEventsDetectorModelIotEvents{..} =
    object $
    catMaybes
    [ fmap (("InputName",) . toJSON) _ioTEventsDetectorModelIotEventsInputName
    ]

-- | Constructor for 'IoTEventsDetectorModelIotEvents' containing required
-- fields as arguments.
ioTEventsDetectorModelIotEvents
  :: IoTEventsDetectorModelIotEvents
ioTEventsDetectorModelIotEvents  =
  IoTEventsDetectorModelIotEvents
  { _ioTEventsDetectorModelIotEventsInputName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-iotevents.html#cfn-iotevents-detectormodel-iotevents-inputname
itedmieInputName :: Lens' IoTEventsDetectorModelIotEvents (Maybe (Val Text))
itedmieInputName = lens _ioTEventsDetectorModelIotEventsInputName (\s a -> s { _ioTEventsDetectorModelIotEventsInputName = a })
