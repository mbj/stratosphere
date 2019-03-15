{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html

module Stratosphere.ResourceProperties.GreengrassDeviceDefinitionVersionDevice where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassDeviceDefinitionVersionDevice.
-- See 'greengrassDeviceDefinitionVersionDevice' for a more convenient
-- constructor.
data GreengrassDeviceDefinitionVersionDevice =
  GreengrassDeviceDefinitionVersionDevice
  { _greengrassDeviceDefinitionVersionDeviceCertificateArn :: Val Text
  , _greengrassDeviceDefinitionVersionDeviceId :: Val Text
  , _greengrassDeviceDefinitionVersionDeviceSyncShadow :: Maybe (Val Bool)
  , _greengrassDeviceDefinitionVersionDeviceThingArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassDeviceDefinitionVersionDevice where
  toJSON GreengrassDeviceDefinitionVersionDevice{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _greengrassDeviceDefinitionVersionDeviceCertificateArn
    , (Just . ("Id",) . toJSON) _greengrassDeviceDefinitionVersionDeviceId
    , fmap (("SyncShadow",) . toJSON) _greengrassDeviceDefinitionVersionDeviceSyncShadow
    , (Just . ("ThingArn",) . toJSON) _greengrassDeviceDefinitionVersionDeviceThingArn
    ]

-- | Constructor for 'GreengrassDeviceDefinitionVersionDevice' containing
-- required fields as arguments.
greengrassDeviceDefinitionVersionDevice
  :: Val Text -- ^ 'gddvdCertificateArn'
  -> Val Text -- ^ 'gddvdId'
  -> Val Text -- ^ 'gddvdThingArn'
  -> GreengrassDeviceDefinitionVersionDevice
greengrassDeviceDefinitionVersionDevice certificateArnarg idarg thingArnarg =
  GreengrassDeviceDefinitionVersionDevice
  { _greengrassDeviceDefinitionVersionDeviceCertificateArn = certificateArnarg
  , _greengrassDeviceDefinitionVersionDeviceId = idarg
  , _greengrassDeviceDefinitionVersionDeviceSyncShadow = Nothing
  , _greengrassDeviceDefinitionVersionDeviceThingArn = thingArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-certificatearn
gddvdCertificateArn :: Lens' GreengrassDeviceDefinitionVersionDevice (Val Text)
gddvdCertificateArn = lens _greengrassDeviceDefinitionVersionDeviceCertificateArn (\s a -> s { _greengrassDeviceDefinitionVersionDeviceCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-id
gddvdId :: Lens' GreengrassDeviceDefinitionVersionDevice (Val Text)
gddvdId = lens _greengrassDeviceDefinitionVersionDeviceId (\s a -> s { _greengrassDeviceDefinitionVersionDeviceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-syncshadow
gddvdSyncShadow :: Lens' GreengrassDeviceDefinitionVersionDevice (Maybe (Val Bool))
gddvdSyncShadow = lens _greengrassDeviceDefinitionVersionDeviceSyncShadow (\s a -> s { _greengrassDeviceDefinitionVersionDeviceSyncShadow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-thingarn
gddvdThingArn :: Lens' GreengrassDeviceDefinitionVersionDevice (Val Text)
gddvdThingArn = lens _greengrassDeviceDefinitionVersionDeviceThingArn (\s a -> s { _greengrassDeviceDefinitionVersionDeviceThingArn = a })
