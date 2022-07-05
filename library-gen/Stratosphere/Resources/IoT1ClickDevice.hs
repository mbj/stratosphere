{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html

module Stratosphere.Resources.IoT1ClickDevice where

import Stratosphere.ResourceImports


-- | Full data type definition for IoT1ClickDevice. See 'ioT1ClickDevice' for
-- a more convenient constructor.
data IoT1ClickDevice =
  IoT1ClickDevice
  { _ioT1ClickDeviceDeviceId :: Val Text
  , _ioT1ClickDeviceEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToResourceProperties IoT1ClickDevice where
  toResourceProperties IoT1ClickDevice{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT1Click::Device"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DeviceId",) . toJSON) _ioT1ClickDeviceDeviceId
        , (Just . ("Enabled",) . toJSON) _ioT1ClickDeviceEnabled
        ]
    }

-- | Constructor for 'IoT1ClickDevice' containing required fields as
-- arguments.
ioT1ClickDevice
  :: Val Text -- ^ 'itcdDeviceId'
  -> Val Bool -- ^ 'itcdEnabled'
  -> IoT1ClickDevice
ioT1ClickDevice deviceIdarg enabledarg =
  IoT1ClickDevice
  { _ioT1ClickDeviceDeviceId = deviceIdarg
  , _ioT1ClickDeviceEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-deviceid
itcdDeviceId :: Lens' IoT1ClickDevice (Val Text)
itcdDeviceId = lens _ioT1ClickDeviceDeviceId (\s a -> s { _ioT1ClickDeviceDeviceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-device.html#cfn-iot1click-device-enabled
itcdEnabled :: Lens' IoT1ClickDevice (Val Bool)
itcdEnabled = lens _ioT1ClickDeviceEnabled (\s a -> s { _ioT1ClickDeviceEnabled = a })
