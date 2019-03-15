{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionLocalDeviceResourceData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionGroupOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionVersionLocalDeviceResourceData. See
-- 'greengrassResourceDefinitionVersionLocalDeviceResourceData' for a more
-- convenient constructor.
data GreengrassResourceDefinitionVersionLocalDeviceResourceData =
  GreengrassResourceDefinitionVersionLocalDeviceResourceData
  { _greengrassResourceDefinitionVersionLocalDeviceResourceDataGroupOwnerSetting :: Maybe GreengrassResourceDefinitionVersionGroupOwnerSetting
  , _greengrassResourceDefinitionVersionLocalDeviceResourceDataSourcePath :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionLocalDeviceResourceData where
  toJSON GreengrassResourceDefinitionVersionLocalDeviceResourceData{..} =
    object $
    catMaybes
    [ fmap (("GroupOwnerSetting",) . toJSON) _greengrassResourceDefinitionVersionLocalDeviceResourceDataGroupOwnerSetting
    , (Just . ("SourcePath",) . toJSON) _greengrassResourceDefinitionVersionLocalDeviceResourceDataSourcePath
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionVersionLocalDeviceResourceData' containing
-- required fields as arguments.
greengrassResourceDefinitionVersionLocalDeviceResourceData
  :: Val Text -- ^ 'grdvldrdSourcePath'
  -> GreengrassResourceDefinitionVersionLocalDeviceResourceData
greengrassResourceDefinitionVersionLocalDeviceResourceData sourcePatharg =
  GreengrassResourceDefinitionVersionLocalDeviceResourceData
  { _greengrassResourceDefinitionVersionLocalDeviceResourceDataGroupOwnerSetting = Nothing
  , _greengrassResourceDefinitionVersionLocalDeviceResourceDataSourcePath = sourcePatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-groupownersetting
grdvldrdGroupOwnerSetting :: Lens' GreengrassResourceDefinitionVersionLocalDeviceResourceData (Maybe GreengrassResourceDefinitionVersionGroupOwnerSetting)
grdvldrdGroupOwnerSetting = lens _greengrassResourceDefinitionVersionLocalDeviceResourceDataGroupOwnerSetting (\s a -> s { _greengrassResourceDefinitionVersionLocalDeviceResourceDataGroupOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-sourcepath
grdvldrdSourcePath :: Lens' GreengrassResourceDefinitionVersionLocalDeviceResourceData (Val Text)
grdvldrdSourcePath = lens _greengrassResourceDefinitionVersionLocalDeviceResourceDataSourcePath (\s a -> s { _greengrassResourceDefinitionVersionLocalDeviceResourceDataSourcePath = a })
