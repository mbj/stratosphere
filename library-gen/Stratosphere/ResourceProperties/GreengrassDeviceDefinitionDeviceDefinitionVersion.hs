
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassDeviceDefinitionDeviceDefinitionVersion where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassDeviceDefinitionDevice

-- | Full data type definition for
-- GreengrassDeviceDefinitionDeviceDefinitionVersion. See
-- 'greengrassDeviceDefinitionDeviceDefinitionVersion' for a more convenient
-- constructor.
data GreengrassDeviceDefinitionDeviceDefinitionVersion =
  GreengrassDeviceDefinitionDeviceDefinitionVersion
  { _greengrassDeviceDefinitionDeviceDefinitionVersionDevices :: [GreengrassDeviceDefinitionDevice]
  } deriving (Show, Eq)

instance ToJSON GreengrassDeviceDefinitionDeviceDefinitionVersion where
  toJSON GreengrassDeviceDefinitionDeviceDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Devices",) . toJSON) _greengrassDeviceDefinitionDeviceDefinitionVersionDevices
    ]

-- | Constructor for 'GreengrassDeviceDefinitionDeviceDefinitionVersion'
-- containing required fields as arguments.
greengrassDeviceDefinitionDeviceDefinitionVersion
  :: [GreengrassDeviceDefinitionDevice] -- ^ 'gddddvDevices'
  -> GreengrassDeviceDefinitionDeviceDefinitionVersion
greengrassDeviceDefinitionDeviceDefinitionVersion devicesarg =
  GreengrassDeviceDefinitionDeviceDefinitionVersion
  { _greengrassDeviceDefinitionDeviceDefinitionVersionDevices = devicesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html#cfn-greengrass-devicedefinition-devicedefinitionversion-devices
gddddvDevices :: Lens' GreengrassDeviceDefinitionDeviceDefinitionVersion [GreengrassDeviceDefinitionDevice]
gddddvDevices = lens _greengrassDeviceDefinitionDeviceDefinitionVersionDevices (\s a -> s { _greengrassDeviceDefinitionDeviceDefinitionVersionDevices = a })
