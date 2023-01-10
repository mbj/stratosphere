
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html

module Stratosphere.ResourceProperties.GreengrassDeviceDefinitionDevice where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassDeviceDefinitionDevice. See
-- 'greengrassDeviceDefinitionDevice' for a more convenient constructor.
data GreengrassDeviceDefinitionDevice =
  GreengrassDeviceDefinitionDevice
  { _greengrassDeviceDefinitionDeviceCertificateArn :: Val Text
  , _greengrassDeviceDefinitionDeviceId :: Val Text
  , _greengrassDeviceDefinitionDeviceSyncShadow :: Maybe (Val Bool)
  , _greengrassDeviceDefinitionDeviceThingArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassDeviceDefinitionDevice where
  toJSON GreengrassDeviceDefinitionDevice{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _greengrassDeviceDefinitionDeviceCertificateArn
    , (Just . ("Id",) . toJSON) _greengrassDeviceDefinitionDeviceId
    , fmap (("SyncShadow",) . toJSON) _greengrassDeviceDefinitionDeviceSyncShadow
    , (Just . ("ThingArn",) . toJSON) _greengrassDeviceDefinitionDeviceThingArn
    ]

-- | Constructor for 'GreengrassDeviceDefinitionDevice' containing required
-- fields as arguments.
greengrassDeviceDefinitionDevice
  :: Val Text -- ^ 'gdddCertificateArn'
  -> Val Text -- ^ 'gdddId'
  -> Val Text -- ^ 'gdddThingArn'
  -> GreengrassDeviceDefinitionDevice
greengrassDeviceDefinitionDevice certificateArnarg idarg thingArnarg =
  GreengrassDeviceDefinitionDevice
  { _greengrassDeviceDefinitionDeviceCertificateArn = certificateArnarg
  , _greengrassDeviceDefinitionDeviceId = idarg
  , _greengrassDeviceDefinitionDeviceSyncShadow = Nothing
  , _greengrassDeviceDefinitionDeviceThingArn = thingArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-certificatearn
gdddCertificateArn :: Lens' GreengrassDeviceDefinitionDevice (Val Text)
gdddCertificateArn = lens _greengrassDeviceDefinitionDeviceCertificateArn (\s a -> s { _greengrassDeviceDefinitionDeviceCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-id
gdddId :: Lens' GreengrassDeviceDefinitionDevice (Val Text)
gdddId = lens _greengrassDeviceDefinitionDeviceId (\s a -> s { _greengrassDeviceDefinitionDeviceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-syncshadow
gdddSyncShadow :: Lens' GreengrassDeviceDefinitionDevice (Maybe (Val Bool))
gdddSyncShadow = lens _greengrassDeviceDefinitionDeviceSyncShadow (\s a -> s { _greengrassDeviceDefinitionDeviceSyncShadow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-thingarn
gdddThingArn :: Lens' GreengrassDeviceDefinitionDevice (Val Text)
gdddThingArn = lens _greengrassDeviceDefinitionDeviceThingArn (\s a -> s { _greengrassDeviceDefinitionDeviceThingArn = a })
