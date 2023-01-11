
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionLocalDeviceResourceData where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionGroupOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionLocalDeviceResourceData. See
-- 'greengrassResourceDefinitionLocalDeviceResourceData' for a more
-- convenient constructor.
data GreengrassResourceDefinitionLocalDeviceResourceData =
  GreengrassResourceDefinitionLocalDeviceResourceData
  { _greengrassResourceDefinitionLocalDeviceResourceDataGroupOwnerSetting :: Maybe GreengrassResourceDefinitionGroupOwnerSetting
  , _greengrassResourceDefinitionLocalDeviceResourceDataSourcePath :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionLocalDeviceResourceData where
  toJSON GreengrassResourceDefinitionLocalDeviceResourceData{..} =
    object $
    catMaybes
    [ fmap (("GroupOwnerSetting",) . toJSON) _greengrassResourceDefinitionLocalDeviceResourceDataGroupOwnerSetting
    , (Just . ("SourcePath",) . toJSON) _greengrassResourceDefinitionLocalDeviceResourceDataSourcePath
    ]

-- | Constructor for 'GreengrassResourceDefinitionLocalDeviceResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionLocalDeviceResourceData
  :: Val Text -- ^ 'grdldrdSourcePath'
  -> GreengrassResourceDefinitionLocalDeviceResourceData
greengrassResourceDefinitionLocalDeviceResourceData sourcePatharg =
  GreengrassResourceDefinitionLocalDeviceResourceData
  { _greengrassResourceDefinitionLocalDeviceResourceDataGroupOwnerSetting = Nothing
  , _greengrassResourceDefinitionLocalDeviceResourceDataSourcePath = sourcePatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-groupownersetting
grdldrdGroupOwnerSetting :: Lens' GreengrassResourceDefinitionLocalDeviceResourceData (Maybe GreengrassResourceDefinitionGroupOwnerSetting)
grdldrdGroupOwnerSetting = lens _greengrassResourceDefinitionLocalDeviceResourceDataGroupOwnerSetting (\s a -> s { _greengrassResourceDefinitionLocalDeviceResourceDataGroupOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-sourcepath
grdldrdSourcePath :: Lens' GreengrassResourceDefinitionLocalDeviceResourceData (Val Text)
grdldrdSourcePath = lens _greengrassResourceDefinitionLocalDeviceResourceDataSourcePath (\s a -> s { _greengrassResourceDefinitionLocalDeviceResourceDataSourcePath = a })
