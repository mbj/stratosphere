{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html

module Stratosphere.Resources.GreengrassDeviceDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassDeviceDefinitionVersionDevice

-- | Full data type definition for GreengrassDeviceDefinitionVersion. See
-- 'greengrassDeviceDefinitionVersion' for a more convenient constructor.
data GreengrassDeviceDefinitionVersion =
  GreengrassDeviceDefinitionVersion
  { _greengrassDeviceDefinitionVersionDeviceDefinitionId :: Val Text
  , _greengrassDeviceDefinitionVersionDevices :: [GreengrassDeviceDefinitionVersionDevice]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassDeviceDefinitionVersion where
  toResourceProperties GreengrassDeviceDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::DeviceDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DeviceDefinitionId",) . toJSON) _greengrassDeviceDefinitionVersionDeviceDefinitionId
        , (Just . ("Devices",) . toJSON) _greengrassDeviceDefinitionVersionDevices
        ]
    }

-- | Constructor for 'GreengrassDeviceDefinitionVersion' containing required
-- fields as arguments.
greengrassDeviceDefinitionVersion
  :: Val Text -- ^ 'gddvDeviceDefinitionId'
  -> [GreengrassDeviceDefinitionVersionDevice] -- ^ 'gddvDevices'
  -> GreengrassDeviceDefinitionVersion
greengrassDeviceDefinitionVersion deviceDefinitionIdarg devicesarg =
  GreengrassDeviceDefinitionVersion
  { _greengrassDeviceDefinitionVersionDeviceDefinitionId = deviceDefinitionIdarg
  , _greengrassDeviceDefinitionVersionDevices = devicesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devicedefinitionid
gddvDeviceDefinitionId :: Lens' GreengrassDeviceDefinitionVersion (Val Text)
gddvDeviceDefinitionId = lens _greengrassDeviceDefinitionVersionDeviceDefinitionId (\s a -> s { _greengrassDeviceDefinitionVersionDeviceDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devices
gddvDevices :: Lens' GreengrassDeviceDefinitionVersion [GreengrassDeviceDefinitionVersionDevice]
gddvDevices = lens _greengrassDeviceDefinitionVersionDevices (\s a -> s { _greengrassDeviceDefinitionVersionDevices = a })
